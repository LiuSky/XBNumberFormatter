//
//  Money.swift
//  XBNumberFormatter
//
//  Created by xiaobin liu on 2019/1/22.
//  Copyright © 2019 Sky. All rights reserved.
//  Reference: https://github.com/Flight-School/Money

import Foundation

/// MARK - 一种货币的数量
public struct Money<Currency: CurrencyType>: Equatable, Hashable {
    
    /// 金额
    public var amount: Decimal
    
    /// 用一个给定的金额创建一个钱数
    public init(_ amount: Decimal) {
        self.amount = amount
    }
    
    /// 货币类型
    public var currency: CurrencyType.Type {
        return Currency.self
    }
    
    /**
     四舍五入的货币数量
     小货币单位的地点数
     */
    public var rounded: Money<Currency> {
        var approximate = self.amount
        var rounded = Decimal()
        NSDecimalRound(&rounded, &approximate, Currency.minorUnit, .bankers)
        
        return Money<Currency>(rounded)
    }
}


extension Money: Comparable {
    
    public static func < (lhs: Money<Currency>, rhs: Money<Currency>) -> Bool {
        return lhs.amount < rhs.amount
    }
}

extension Money: CustomStringConvertible {
    public var description: String {
        return "\(self.amount)"
    }
}

extension Money: LosslessStringConvertible {
    public init?(_ description: String) {
        guard let amount = Decimal(string: description) else {
            return nil
        }
        
        self.init(amount)
    }
}

extension Money: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int) {
        self.init(Decimal(integerLiteral: value))
    }
}

extension Money: ExpressibleByFloatLiteral {
    
    /**
     从给定的浮点文字创建一个新值。
     
     -重要提示:Swift浮点文字当前被初始化
     使用二进制浮点数类型，
     它不能精确地表示某些值。
     作为一种变通方法，初始化货币数量
     从浮点字面值是圆的
     到较小货币单位的位置数。
     为了表示较小的部分货币量，
     而是从字符串文字值或小数值初始化
     - Bug: See https://bugs.swift.org/browse/SR-920
     */
    public init(floatLiteral value: Double) {
        var approximate = Decimal(floatLiteral: value)
        var rounded = Decimal()
        NSDecimalRound(&rounded, &approximate, Currency.minorUnit, .bankers)
        self.init(rounded)
    }
}

extension Money: ExpressibleByStringLiteral {
    public init(unicodeScalarLiteral value: Unicode.Scalar) {
        self.init(stringLiteral: String(value))
    }
    
    public init(extendedGraphemeClusterLiteral value: Character) {
        self.init(stringLiteral: String(value))
    }
    
    public init(stringLiteral value: String) {
        self.init(value)!
    }
}

extension Money {
    
    /// 两个货币量的总和
    public static func + (lhs: Money<Currency>, rhs: Money<Currency>) -> Money<Currency> {
        return Money<Currency>(lhs.amount + rhs.amount)
    }
    
    /// 把一种货币数量加到另一种货币数量上
    public static func += (lhs: inout Money<Currency>, rhs: Money<Currency>) {
        lhs.amount += rhs.amount
    }
    
    /// 两个货币量之间的差额
    public static func - (lhs: Money<Currency>, rhs: Money<Currency>) -> Money<Currency> {
        return Money<Currency>(lhs.amount - rhs.amount)
    }
    
    /// 从一种货币中减去另一种货币
    public static func -= (lhs: inout Money<Currency>, rhs: Money<Currency>) {
        lhs.amount -= rhs.amount
    }
}

extension Money {
    
    /// 货币数量和标量的乘积
    public static func * (lhs: Money<Currency>, rhs: Decimal) -> Money<Currency> {
        return Money<Currency>(lhs.amount * rhs)
    }
    
    /// 货币数量和标量的乘积
    public static func * (lhs: Money<Currency>, rhs: Money<Currency>) -> Money<Currency> {
        return Money<Currency>(lhs.amount * rhs.amount)
    }
    
    /**
     货币数量和标量的乘积。
     
     重要提示:将货币数量乘以浮点数
     结果得到一个四舍五入的位数
     小货币单位。
     为了产生一个更小的部分货币量，
     而是乘以一个“小数”值
     */
    public static func * (lhs: Money<Currency>, rhs: Double) -> Money<Currency> {
        return (lhs * Decimal(rhs)).rounded
    }
    
    /// 货币数量和标量的乘积
    public static func * (lhs: Money<Currency>, rhs: Int) -> Money<Currency> {
        return lhs * Decimal(rhs)
    }
    
    /// 货币数量和标量的乘积
    public static func * (lhs: Decimal, rhs: Money<Currency>) -> Money<Currency> {
        return rhs * lhs
    }
    
    /**
     货币数量和标量的乘积。
     
     重要提示:将货币数量乘以浮点数
     结果得到一个四舍五入的位数
     小货币单位。
     为了产生一个更小的部分货币量，
     而是乘以一个“小数”值
     */
    public static func * (lhs: Double, rhs: Money<Currency>) -> Money<Currency> {
        return rhs * lhs
    }
    
    /// 货币数量和标量的乘积
    public static func * (lhs: Int, rhs: Money<Currency>) -> Money<Currency> {
        return rhs * lhs
    }
    
    /// 将货币数量乘以标量值
    public static func *= (lhs: inout Money<Currency>, rhs: Decimal) {
        lhs.amount *= rhs
    }
    
    
    /**
     将货币数量乘以标量值。
     
     重要提示:将货币数量乘以浮点数
     结果得到一个四舍五入的位数
     小货币单位。
     为了产生一个更小的部分货币量，
     而是乘以一个“小数”值
     */
    public static func *= (lhs: inout Money<Currency>, rhs: Double) {
        lhs.amount = Money<Currency>(lhs.amount * Decimal(rhs)).rounded.amount
    }
    
    /// 将货币数量乘以标量值
    public static func *= (lhs: inout Money<Currency>, rhs: Int) {
        lhs.amount *= Decimal(rhs)
    }
}

extension Money {
    
    /// 从一种货币中减去另一种货币
    public static prefix func - (value: Money<Currency>) -> Money<Currency> {
        return Money<Currency>(-value.amount)
    }
}

extension Money: Codable {
    
    private enum CodingKeys: String, CodingKey {
        case amount
        case currencyCode
    }
    
    public init(from decoder: Decoder) throws {
        if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            let currencyCode = try keyedContainer.decode(String.self, forKey: .currencyCode)
            guard currencyCode == Currency.code else {
                let context = DecodingError.Context(codingPath: keyedContainer.codingPath, debugDescription: "Currency mismatch: expected \(Currency.code), got \(currencyCode)")
                throw DecodingError.typeMismatch(Money<Currency>.self, context)
            }
            self.amount = try keyedContainer.decode(Decimal.self, forKey: .amount)
        } else if let singleValueContainer = try? decoder.singleValueContainer() {
            self.amount = try singleValueContainer.decode(Decimal.self)
        } else {
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Couldn't decode Money value")
            throw DecodingError.dataCorrupted(context)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var keyedContainer = encoder.container(keyedBy: CodingKeys.self)
        try keyedContainer.encode(self.amount, forKey: .amount)
        try keyedContainer.encode(Currency.code, forKey: .currencyCode)
    }
}
