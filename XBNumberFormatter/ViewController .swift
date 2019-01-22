//
//  ViewController.swift
//  XBNumberFormatter
//
//  Created by xiaobin liu on 2019/1/22.
//  Copyright © 2019 Sky. All rights reserved.
//

import UIKit


/// MARK - NumberFormatter
final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.numberStyle()
        self.conventString()
        self.usesGroupingSeparator()
        self.formatWidth()
        self.maximumInteger()
        self.maximumFractionDigits()
        self.positivePrefix()
        self.positiveFormat()
    }
    
    
    /// MARK - 格式
    private func numberStyle() {
        
        let a1 = Money<CLP>(floatLiteral: 10)
        let a2 = Money<CLP>(floatLiteral: 114)
        let a3 = Money<CLP>(floatLiteral: 10)
        
        //原始值
        let total = a1*a3+a2
        
        let numberFormatter = NumberFormatter()
        numberFormatter.currencyCode = total.currency.code
        
        //四舍五入的整数
        numberFormatter.numberStyle = .none
        debugPrint("none = \(numberFormatter.string(for: total.amount)!)")
        
        
        //小数形式（以国际化格式输出 保留三位小数,第四位小数四舍五入）
        numberFormatter.numberStyle = .decimal
        debugPrint("decimal = \(numberFormatter.string(for: total.amount)!)")
        
        //百分数形式
        numberFormatter.numberStyle = .percent
        debugPrint("percent = \(numberFormatter.string(for: total.amount)!)")
        
        //科学计数
        numberFormatter.numberStyle = .scientific
        debugPrint("scientific = \(numberFormatter.string(for: total.amount)!)")
        
        //朗读形式（英文表示）
        numberFormatter.numberStyle = .spellOut
        debugPrint("spellOut = \(numberFormatter.string(for: total.amount)!)")
        
        //序数形式
        numberFormatter.numberStyle = .ordinal
        debugPrint("ordinal = \(numberFormatter.string(for: total.amount)!)")
        
        
        //货币形式（以货币通用格式输出 保留2位小数,第三位小数四舍五入,在前面添加货币符号）
        numberFormatter.numberStyle = .currency
        debugPrint("currency = \(numberFormatter.string(for: total.amount)!)")
        
        //货币形式
        numberFormatter.numberStyle = .currencyISOCode
        debugPrint("currencyISOCode = \(numberFormatter.string(for: total.amount)!)")
        
        //货币形式
        numberFormatter.numberStyle = .currencyPlural
        debugPrint("currencyPlural = \(numberFormatter.string(for: total.amount)!)")
        
        //会计计数
        numberFormatter.numberStyle = .currencyAccounting
        debugPrint("currencyAccounting = \(numberFormatter.string(for: total.amount)!)")
    }
    
    
    /// 转换字符串
    private func conventString() {
        
        //从字符串装成数字
        let number = NumberFormatter().number(from: "1234.5678")!
        
        //四舍五入的整数
        let none = NumberFormatter.localizedString(from: number, number: .none)
        
        //小数形式（以国际化格式输出 保留三位小数,第四位小数四舍五入）
        let decimal = NumberFormatter.localizedString(from: number, number: .decimal)
        
        //打印结果
        print("原始值 = \(number)")
        print("none = \(none)")
        print("decimal = \(decimal)")
    }
    
    
    /// 分割符
    private func usesGroupingSeparator() {
        
        let number = NSNumber(value: 12345.6789)
        
        //创建一个NumberFormatter对象
        let numberFormatter = NumberFormatter()
        //设置number显示样式
        numberFormatter.numberStyle = .decimal  // 小数形式
        numberFormatter.usesGroupingSeparator = true //设置用组分隔
        numberFormatter.groupingSeparator = "," //分隔符号
        numberFormatter.groupingSize = 4  //分隔位数
        //格式化
        let format = numberFormatter.string(from: number)!
        
        
        //打印结果
        print("原始值 = \(number)")
        print("格式化结果 = \(format)")
    }
    
    
    /// 设置格式宽度、填充符、填充位置
    private func formatWidth() {
        
        //原始值
        let number = NSNumber(value: 12345.6789)
        
        //创建一个NumberFormatter对象
        let numberFormatter = NumberFormatter()
        //设置number显示样式
        numberFormatter.numberStyle = .none //四舍五入的整数
        numberFormatter.formatWidth = 10 //补齐10位
        numberFormatter.paddingCharacter = "0" //不足位数用0补
        numberFormatter.paddingPosition = .beforePrefix  //补在前面
        //格式化
        let format = numberFormatter.string(from: number)!
        
        //打印结果
        print("原始值 = \(number)")
        print("格式化结果 = \(format)")
    }
    
    
    /// 设置最大整数位数、最下整数位数
    private func maximumInteger() {
        
        //原始值
        let number = NSNumber(value: 5.6789)
        
        //创建一个NumberFormatter对象
        let numberFormatter = NumberFormatter()
        //设置number显示样式
        numberFormatter.numberStyle = .none //四舍五入的整数
        numberFormatter.maximumIntegerDigits = 4 //设置最大整数位数（超过的直接截断）
        numberFormatter.minimumIntegerDigits = 3 //设置最小整数位数（不足的前面补0）
        //格式化
        let format = numberFormatter.string(from: number)!
        
        //打印结果
        print("原始值 = \(number)")
        print("格式化结果 = \(format)")
    }
    
    
    /// 设置最大小数位数、最小小数位数
    private func maximumFractionDigits() {
        
        //原始值
        let number = NSNumber(value: 12345.6)
        
        //创建一个NumberFormatter对象
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 3 //设置小数点后最多3位
        numberFormatter.minimumFractionDigits = 2 //设置小数点后最少2位（不足补0）
        //格式化
        let format = numberFormatter.string(from: number)!
        
        //打印结果
        print("原始值 = \(number)")
        print("格式化结果 = \(format)")
    }
    
    
    /// 设置前缀、后缀
    private func positivePrefix() {
        
        //原始值
        let number = NSNumber(value: 12345.6789)
        
        //创建一个NumberFormatter对象
        let numberFormatter = NumberFormatter()
        //设置number显示样式
        numberFormatter.numberStyle = .none //四舍五入的整数
        numberFormatter.positivePrefix = "$" //自定义前缀
        numberFormatter.positiveSuffix = "元" //自定义后缀
        //格式化
        let format = numberFormatter.string(from: number)!
        
        //打印结果
        print("原始值 = \(number)")
        print("格式化结果 = \(format)")
    }
    
    
    /// 设置格式字符串
    private func positiveFormat() {
        
        //原始值
        let number = NSNumber(value: -12345.6789)
        
        //创建一个NumberFormatter对象
        let numberFormatter = NumberFormatter()
        numberFormatter.positiveFormat = "###,###.##" //设置格式
        //格式化
        let format = numberFormatter.string(from: number)!
        
        //打印结果
        print("原始值 = \(number)")
        print("格式化结果 = \(format)")
    }
    
}

