//
//  Currency.swift
//  XBNumberFormatter
//
//  Created by xiaobin liu on 2019/1/22.
//  Copyright © 2019 Sky. All rights reserved.
//  Reference: https://github.com/Flight-School/Money

import Foundation

/// MARK - 一个货币单位(https://en.wikipedia.org/wiki/ISO_4217 三个字母的ISO 4217货币代码命名)
public protocol CurrencyType {
    
    /// 三个字母的ISO 4217货币代码
    static var code: String { get }
    
    /// 货币的名称
    static var name: String { get }
    
    /**
     小数点用来表示的小数位数
     任何货币的小单位。
     例如，美元(USD)
     有一个小单位(美分)
     等于1美元的1/100，
     因此取两位小数。
     日元
     没有小单位，
     因此取0位小数
     */
    static var minorUnit: Int { get }
}



/// MARK -  🇦🇪阿拉伯联合酋长国
public enum AED: CurrencyType {
    
    public static var code: String {
        return "AED"
    }
    
    public static var name: String {
        return "UAE Dirham"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}


/// MARK - 🇦🇫阿富汗
public enum AFN: CurrencyType {
    
    public static var code: String {
        return "AFN"
    }
    
    public static var name: String {
        return "Afghani"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}


/// MARK - 🇦🇱阿尔巴尼亚
public enum ALL: CurrencyType {
    public static var code: String {
        return "ALL"
    }
    
    public static var name: String {
        return "Lek"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇦🇲亚美尼亚
public enum AMD: CurrencyType {
    public static var code: String {
        return "AMD"
    }
    
    public static var name: String {
        return "Armenian Dram"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK -  🇨🇼库拉索岛（CW），圣马丁岛（SX）
public enum ANG: CurrencyType {
    public static var code: String {
        return "ANG"
    }
    
    public static var name: String {
        return "Netherlands Antillean Guilder"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇦🇴安哥拉
public enum AOA: CurrencyType {
    public static var code: String {
        return "AOA"
    }
    
    public static var name: String {
        return "Kwanza"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇦🇷阿根廷
public enum ARS: CurrencyType {
    public static var code: String {
        return "ARS"
    }
    
    public static var name: String {
        return "Argentine Peso"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇦🇺澳大利亚 圣诞岛（CX），科科斯（基林）群岛（CC），赫德岛和麦当劳群岛（HM），基里巴斯（KI），瑙鲁（NR），诺福克岛（NF），图瓦卢
public enum AUD: CurrencyType {
    public static var code: String {
        return "AUD"
    }
    
    public static var name: String {
        return "Australian Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇦🇼阿鲁巴
public enum AWG: CurrencyType {
    public static var code: String {
        return "AWG"
    }
    
    public static var name: String {
        return "Aruban Florin"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇦🇿阿塞拜疆
public enum AZN: CurrencyType {
    public static var code: String {
        return "AZN"
    }
    
    public static var name: String {
        return "Azerbaijan Manat"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇦波斯尼亚和黑塞哥维那
public enum BAM: CurrencyType {
    public static var code: String {
        return "BAM"
    }
    
    public static var name: String {
        return "Convertible Mark"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇧巴巴多斯
public enum BBD: CurrencyType {
    public static var code: String {
        return "BBD"
    }
    
    public static var name: String {
        return "Barbados Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇩孟加拉国
public enum BDT: CurrencyType {
    public static var code: String {
        return "BDT"
    }
    
    public static var name: String {
        return "Taka"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇬保加利亚
public enum BGN: CurrencyType {
    public static var code: String {
        return "BGN"
    }
    
    public static var name: String {
        return "Bulgarian Lev"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇭巴林
public enum BHD: CurrencyType {
    public static var code: String {
        return "BHD"
    }
    
    public static var name: String {
        return "Bahraini Dinar"
    }
    
    public static var minorUnit: Int {
        return 3
    }
}

/// MARK - 🇧🇮布隆迪
public enum BIF: CurrencyType {
    public static var code: String {
        return "BIF"
    }
    
    public static var name: String {
        return "Burundi Franc"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 🇧🇲百慕大
public enum BMD: CurrencyType {
    public static var code: String {
        return "BMD"
    }
    
    public static var name: String {
        return "Bermudian Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇳文莱
public enum BND: CurrencyType {
    public static var code: String {
        return "BND"
    }
    
    public static var name: String {
        return "Brunei Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇴玻利维亚
public enum BOB: CurrencyType {
    public static var code: String {
        return "BOB"
    }
    
    public static var name: String {
        return "Boliviano"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇴玻利维亚
public enum BOV: CurrencyType {
    public static var code: String {
        return "BOV"
    }
    
    public static var name: String {
        return "Mvdol"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇷巴西
public enum BRL: CurrencyType {
    public static var code: String {
        return "BRL"
    }
    
    public static var name: String {
        return "Brazilian Real"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇸巴哈马
public enum BSD: CurrencyType {
    public static var code: String {
        return "BSD"
    }
    
    public static var name: String {
        return "Bahamian Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇹不丹
public enum BTN: CurrencyType {
    public static var code: String {
        return "BTN"
    }
    
    public static var name: String {
        return "Ngultrum"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇼博茨瓦纳
public enum BWP: CurrencyType {
    public static var code: String {
        return "BWP"
    }
    
    public static var name: String {
        return "Pula"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇾白俄罗斯
public enum BYN: CurrencyType {
    public static var code: String {
        return "BYN"
    }
    
    public static var name: String {
        return "Belarusian Ruble"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇧🇿伯利兹
public enum BZD: CurrencyType {
    public static var code: String {
        return "BZD"
    }
    
    public static var name: String {
        return "Belize Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇦加拿大
public enum CAD: CurrencyType {
    public static var code: String {
        return "CAD"
    }
    
    public static var name: String {
        return "Canadian Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇩刚果民主共和国
public enum CDF: CurrencyType {
    public static var code: String {
        return "CDF"
    }
    
    public static var name: String {
        return "Congolese Franc"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇭瑞士
public enum CHE: CurrencyType {
    public static var code: String {
        return "CHE"
    }
    
    public static var name: String {
        return "WIR Euro"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇭瑞士，🇱🇮列支敦士登
public enum CHF: CurrencyType {
    public static var code: String {
        return "CHF"
    }
    
    public static var name: String {
        return "Swiss Franc"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇭瑞士
public enum CHW: CurrencyType {
    public static var code: String {
        return "CHW"
    }
    
    public static var name: String {
        return "WIR Franc"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇱智利
public enum CLF: CurrencyType {
    public static var code: String {
        return "CLF"
    }
    
    public static var name: String {
        return "Unidad de Fomento"
    }
    
    public static var minorUnit: Int {
        return 4
    }
}

/// MARK - 🇨🇱智利
public enum CLP: CurrencyType {
    public static var code: String {
        return "CLP"
    }
    
    public static var name: String {
        return "Chilean Peso"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 🇨🇳中国
public enum CNY: CurrencyType {
    public static var code: String {
        return "CNY"
    }
    
    public static var name: String {
        return "Yuan Renminbi"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇴哥伦比亚
public enum COP: CurrencyType {
    public static var code: String {
        return "COP"
    }
    
    public static var name: String {
        return "Colombian Peso"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇴哥伦比亚
public enum COU: CurrencyType {
    public static var code: String {
        return "COU"
    }
    
    public static var name: String {
        return "Unidad de Valor Real"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇷哥斯达黎加
public enum CRC: CurrencyType {
    public static var code: String {
        return "CRC"
    }
    
    public static var name: String {
        return "Costa Rican Colon"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇺古巴
public enum CUC: CurrencyType {
    public static var code: String {
        return "CUC"
    }
    
    public static var name: String {
        return "Peso Convertible"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇺古巴
public enum CUP: CurrencyType {
    public static var code: String {
        return "CUP"
    }
    
    public static var name: String {
        return "Cuban Peso"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇻佛得角
public enum CVE: CurrencyType {
    public static var code: String {
        return "CVE"
    }
    
    public static var name: String {
        return "Cabo Verde Escudo"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇨🇿捷克
public enum CZK: CurrencyType {
    public static var code: String {
        return "CZK"
    }
    
    public static var name: String {
        return "Czech Koruna"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇩🇯吉布提
public enum DJF: CurrencyType {
    public static var code: String {
        return "DJF"
    }
    
    public static var name: String {
        return "Djibouti Franc"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 🇩🇰丹麦，🇫🇴法罗群岛（FO），🇬🇱格陵兰
public enum DKK: CurrencyType {
    public static var code: String {
        return "DKK"
    }
    
    public static var name: String {
        return "Danish Krone"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 多明尼加共和国
public enum DOP: CurrencyType {
    public static var code: String {
        return "DOP"
    }
    
    public static var name: String {
        return "Dominican Peso"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 🇩🇿阿尔及利亚
public enum DZD: CurrencyType {
    public static var code: String {
        return "DZD"
    }
    
    public static var name: String {
        return "Algerian Dinar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 埃及
public enum EGP: CurrencyType {
    public static var code: String {
        return "EGP"
    }
    
    public static var name: String {
        return "Egyptian Pound"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 厄立特里亚
public enum ERN: CurrencyType {
    public static var code: String {
        return "ERN"
    }
    
    public static var name: String {
        return "Nakfa"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 埃塞俄比亚
public enum ETB: CurrencyType {
    public static var code: String {
        return "ETB"
    }
    
    public static var name: String {
        return "Ethiopian Birr"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK -  安道尔（AD）， 奥地利（AT），比利时（BE），塞浦路斯（CY），爱沙尼亚（EE），芬兰（FI），法国（FR），德国（DE），希腊（GR），瓜德罗普岛（GP），爱尔兰（IE），意大利（IT），拉脱维亚（LV），立陶宛（LT），卢森堡（LU），马耳他（MT），马提尼克岛（MQ），摩纳哥（MC），黑山（ME），荷兰（NL），葡萄牙（PT），                     留尼旺（RE），圣巴泰勒米（BL），圣皮埃尔和密克隆（下午），圣马力诺（SM），斯洛伐克（SK），斯洛文尼亚（SI），西班牙（ES）
public enum EUR: CurrencyType {
    public static var code: String {
        return "EUR"
    }
    
    public static var name: String {
        return "Euro"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 斐
public enum FJD: CurrencyType {
    public static var code: String {
        return "FJD"
    }
    
    public static var name: String {
        return "Fiji Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 福克兰群岛
public enum FKP: CurrencyType {
    public static var code: String {
        return "FKP"
    }
    
    public static var name: String {
        return "Falkland Islands Pound"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 英国，马恩岛（IM，见Manx pound），泽西岛（JE，见泽西岛镑）和根西岛（GG，见格恩西镑
public enum GBP: CurrencyType {
    public static var code: String {
        return "GBP"
    }
    
    public static var name: String {
        return "Pound Sterling"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 格鲁吉亚
public enum GEL: CurrencyType {
    public static var code: String {
        return "GEL"
    }
    
    public static var name: String {
        return "Lari"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 加纳
public enum GHS: CurrencyType {
    public static var code: String {
        return "GHS"
    }
    
    public static var name: String {
        return "Ghana Cedi"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}


/// MARK - 直布罗陀
public enum GIP: CurrencyType {
    public static var code: String {
        return "GIP"
    }
    
    public static var name: String {
        return "Gibraltar Pound"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}


/// MARK - 冈比亚
public enum GMD: CurrencyType {
    public static var code: String {
        return "GMD"
    }
    
    public static var name: String {
        return "Dalasi"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 几内亚
public enum GNF: CurrencyType {
    public static var code: String {
        return "GNF"
    }
    
    public static var name: String {
        return "Guinean Franc"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 危地马拉
public enum GTQ: CurrencyType {
    public static var code: String {
        return "GTQ"
    }
    
    public static var name: String {
        return "Quetzal"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 圭亚那
public enum GYD: CurrencyType {
    public static var code: String {
        return "GYD"
    }
    
    public static var name: String {
        return "Guyana Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 香港
public enum HKD: CurrencyType {
    public static var code: String {
        return "HKD"
    }
    
    public static var name: String {
        return "Hong Kong Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 洪都拉斯
public enum HNL: CurrencyType {
    
    public static var code: String {
        return "HNL"
    }
    
    public static var name: String {
        return "Lempira"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 克罗地亚
public enum HRK: CurrencyType {
    public static var code: String {
        return "HRK"
    }
    
    public static var name: String {
        return "Kuna"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 海地
public enum HTG: CurrencyType {
    public static var code: String {
        return "HTG"
    }
    
    public static var name: String {
        return "Gourde"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 匈牙利
public enum HUF: CurrencyType {
    public static var code: String {
        return "HUF"
    }
    
    public static var name: String {
        return "Forint"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 印度尼西亚
public enum IDR: CurrencyType {
    public static var code: String {
        return "IDR"
    }
    
    public static var name: String {
        return "Rupiah"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 以色列
public enum ILS: CurrencyType {
    public static var code: String {
        return "ILS"
    }
    
    public static var name: String {
        return "New Israeli Sheqel"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK -  印度，不丹
public enum INR: CurrencyType {
    public static var code: String {
        return "INR"
    }
    
    public static var name: String {
        return "Indian Rupee"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 伊拉克
public enum IQD: CurrencyType {
    public static var code: String {
        return "IQD"
    }
    
    public static var name: String {
        return "Iraqi Dinar"
    }
    
    public static var minorUnit: Int {
        return 3
    }
}

/// MARK - 伊朗
public enum IRR: CurrencyType {
    public static var code: String {
        return "IRR"
    }
    
    public static var name: String {
        return "Iranian Rial"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 冰岛
public enum ISK: CurrencyType {
    public static var code: String {
        return "ISK"
    }
    
    public static var name: String {
        return "Iceland Krona"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 牙买加
public enum JMD: CurrencyType {
    public static var code: String {
        return "JMD"
    }
    
    public static var name: String {
        return "Jamaican Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 约旦
public enum JOD: CurrencyType {
    public static var code: String {
        return "JOD"
    }
    
    public static var name: String {
        return "Jordanian Dinar"
    }
    
    public static var minorUnit: Int {
        return 3
    }
}

/// MARK - 日本
public enum JPY: CurrencyType {
    public static var code: String {
        return "JPY"
    }
    
    public static var name: String {
        return "Yen"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 肯尼亚
public enum KES: CurrencyType {
    public static var code: String {
        return "KES"
    }
    
    public static var name: String {
        return "Kenyan Shilling"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 吉尔吉斯斯坦
public enum KGS: CurrencyType {
    public static var code: String {
        return "KGS"
    }
    
    public static var name: String {
        return "Som"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 柬埔寨
public enum KHR: CurrencyType {
    public static var code: String {
        return "KHR"
    }
    
    public static var name: String {
        return "Riel"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 科摩罗
public enum KMF: CurrencyType {
    public static var code: String {
        return "KMF"
    }
    
    public static var name: String {
        return "Comorian Franc "
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 北朝鲜
public enum KPW: CurrencyType {
    public static var code: String {
        return "KPW"
    }
    
    public static var name: String {
        return "North Korean Won"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 韩国
public enum KRW: CurrencyType {
    public static var code: String {
        return "KRW"
    }
    
    public static var name: String {
        return "Won"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 科威特
public enum KWD: CurrencyType {
    public static var code: String {
        return "KWD"
    }
    
    public static var name: String {
        return "Kuwaiti Dinar"
    }
    
    public static var minorUnit: Int {
        return 3
    }
}

/// MARK - 开曼群岛
public enum KYD: CurrencyType {
    public static var code: String {
        return "KYD"
    }
    
    public static var name: String {
        return "Cayman Islands Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 哈萨克斯坦
public enum KZT: CurrencyType {
    public static var code: String {
        return "KZT"
    }
    
    public static var name: String {
        return "Tenge"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 老挝
public enum LAK: CurrencyType {
    public static var code: String {
        return "LAK"
    }
    
    public static var name: String {
        return "Lao Kip"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 黎巴嫩
public enum LBP: CurrencyType {
    public static var code: String {
        return "LBP"
    }
    
    public static var name: String {
        return "Lebanese Pound"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 斯里兰卡
public enum LKR: CurrencyType {
    public static var code: String {
        return "LKR"
    }
    
    public static var name: String {
        return "Sri Lanka Rupee"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 利比里亚
public enum LRD: CurrencyType {
    public static var code: String {
        return "LRD"
    }
    
    public static var name: String {
        return "Liberian Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 莱索托
public enum LSL: CurrencyType {
    public static var code: String {
        return "LSL"
    }
    
    public static var name: String {
        return "Loti"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 利比亚
public enum LYD: CurrencyType {
    public static var code: String {
        return "LYD"
    }
    
    public static var name: String {
        return "Libyan Dinar"
    }
    
    public static var minorUnit: Int {
        return 3
    }
}

/// MARK - 摩洛哥
public enum MAD: CurrencyType {
    public static var code: String {
        return "MAD"
    }
    
    public static var name: String {
        return "Moroccan Dirham"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 摩尔多瓦
public enum MDL: CurrencyType {
    public static var code: String {
        return "MDL"
    }
    
    public static var name: String {
        return "Moldovan Leu"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 马达加斯加
public enum MGA: CurrencyType {
    public static var code: String {
        return "MGA"
    }
    
    public static var name: String {
        return "Malagasy Ariary"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 马其顿
public enum MKD: CurrencyType {
    public static var code: String {
        return "MKD"
    }
    
    public static var name: String {
        return "Denar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 缅甸
public enum MMK: CurrencyType {
    public static var code: String {
        return "MMK"
    }
    
    public static var name: String {
        return "Kyat"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 蒙古
public enum MNT: CurrencyType {
    public static var code: String {
        return "MNT"
    }
    
    public static var name: String {
        return "Tugrik"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 澳门
public enum MOP: CurrencyType {
    public static var code: String {
        return "MOP"
    }
    
    public static var name: String {
        return "Pataca"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 毛里塔尼亚
public enum MRU: CurrencyType {
    public static var code: String {
        return "MRU"
    }
    
    public static var name: String {
        return "Ouguiya"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 毛里求斯
public enum MUR: CurrencyType {
    public static var code: String {
        return "MUR"
    }
    
    public static var name: String {
        return "Mauritius Rupee"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 马尔代夫
public enum MVR: CurrencyType {
    public static var code: String {
        return "MVR"
    }
    
    public static var name: String {
        return "Rufiyaa"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 马拉维
public enum MWK: CurrencyType {
    public static var code: String {
        return "MWK"
    }
    
    public static var name: String {
        return "Malawi Kwacha"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 墨西哥
public enum MXN: CurrencyType {
    public static var code: String {
        return "MXN"
    }
    
    public static var name: String {
        return "Mexican Peso"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 墨西哥
public enum MXV: CurrencyType {
    public static var code: String {
        return "MXV"
    }
    
    public static var name: String {
        return "Mexican Unidad de Inversion (UDI)"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 马来西亚
public enum MYR: CurrencyType {
    public static var code: String {
        return "MYR"
    }
    
    public static var name: String {
        return "Malaysian Ringgit"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 莫桑比克
public enum MZN: CurrencyType {
    public static var code: String {
        return "MZN"
    }
    
    public static var name: String {
        return "Mozambique Metical"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 纳米比亚
public enum NAD: CurrencyType {
    public static var code: String {
        return "NAD"
    }
    
    public static var name: String {
        return "Namibia Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 尼日利亚
public enum NGN: CurrencyType {
    public static var code: String {
        return "NGN"
    }
    
    public static var name: String {
        return "Naira"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 尼加拉瓜
public enum NIO: CurrencyType {
    public static var code: String {
        return "NIO"
    }
    
    public static var name: String {
        return "Cordoba Oro"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 挪威，斯瓦尔巴和扬马延（SJ），布维岛（BV
public enum NOK: CurrencyType {
    public static var code: String {
        return "NOK"
    }
    
    public static var name: String {
        return "Norwegian Krone"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 尼泊尔
public enum NPR: CurrencyType {
    public static var code: String {
        return "NPR"
    }
    
    public static var name: String {
        return "Nepalese Rupee"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 新西兰，库克群岛（CK），纽埃（NU），皮特凯恩群岛（PN;另见皮特凯恩群岛元），托克劳（TK
public enum NZD: CurrencyType {
    public static var code: String {
        return "NZD"
    }
    
    public static var name: String {
        return "New Zealand Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 阿曼
public enum OMR: CurrencyType {
    public static var code: String {
        return "OMR"
    }
    
    public static var name: String {
        return "Rial Omani"
    }
    
    public static var minorUnit: Int {
        return 3
    }
}

/// MARK - 巴拿马
public enum PAB: CurrencyType {
    public static var code: String {
        return "PAB"
    }
    
    public static var name: String {
        return "Balboa"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 秘鲁
public enum PEN: CurrencyType {
    public static var code: String {
        return "PEN"
    }
    
    public static var name: String {
        return "Sol"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 巴布亚新几内亚
public enum PGK: CurrencyType {
    public static var code: String {
        return "PGK"
    }
    
    public static var name: String {
        return "Kina"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 菲律宾
public enum PHP: CurrencyType {
    public static var code: String {
        return "PHP"
    }
    
    public static var name: String {
        return "Philippine Piso"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 巴基斯坦
public enum PKR: CurrencyType {
    public static var code: String {
        return "PKR"
    }
    
    public static var name: String {
        return "Pakistan Rupee"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 波兰
public enum PLN: CurrencyType {
    public static var code: String {
        return "PLN"
    }
    
    public static var name: String {
        return "Zloty"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 巴拉圭
public enum PYG: CurrencyType {
    public static var code: String {
        return "PYG"
    }
    
    public static var name: String {
        return "Guarani"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 卡塔尔
public enum QAR: CurrencyType {
    public static var code: String {
        return "QAR"
    }
    
    public static var name: String {
        return "Qatari Rial"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 罗马尼亚
public enum RON: CurrencyType {
    public static var code: String {
        return "RON"
    }
    
    public static var name: String {
        return "Romanian Leu"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 塞尔维亚
public enum RSD: CurrencyType {
    public static var code: String {
        return "RSD"
    }
    
    public static var name: String {
        return "Serbian Dinar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 俄国
public enum RUB: CurrencyType {
    public static var code: String {
        return "RUB"
    }
    
    public static var name: String {
        return "Russian Ruble"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 卢旺达
public enum RWF: CurrencyType {
    public static var code: String {
        return "RWF"
    }
    
    public static var name: String {
        return "Rwanda Franc"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 沙特阿拉伯
public enum SAR: CurrencyType {
    public static var code: String {
        return "SAR"
    }
    
    public static var name: String {
        return "Saudi Riyal"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 所罗门群岛
public enum SBD: CurrencyType {
    public static var code: String {
        return "SBD"
    }
    
    public static var name: String {
        return "Solomon Islands Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 塞舌尔
public enum SCR: CurrencyType {
    public static var code: String {
        return "SCR"
    }
    
    public static var name: String {
        return "Seychelles Rupee"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 苏丹
public enum SDG: CurrencyType {
    public static var code: String {
        return "SDG"
    }
    
    public static var name: String {
        return "Sudanese Pound"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 瑞典
public enum SEK: CurrencyType {
    public static var code: String {
        return "SEK"
    }
    
    public static var name: String {
        return "Swedish Krona"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 新加坡
public enum SGD: CurrencyType {
    public static var code: String {
        return "SGD"
    }
    
    public static var name: String {
        return "Singapore Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 圣赫勒拿（SH-SH），阿森松岛（SH-AC），特里斯坦达库尼亚
public enum SHP: CurrencyType {
    public static var code: String {
        return "SHP"
    }
    
    public static var name: String {
        return "Saint Helena Pound"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 塞拉利昂
public enum SLL: CurrencyType {
    public static var code: String {
        return "SLL"
    }
    
    public static var name: String {
        return "Leone"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 索马里
public enum SOS: CurrencyType {
    public static var code: String {
        return "SOS"
    }
    
    public static var name: String {
        return "Somali Shilling"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 苏里南
public enum SRD: CurrencyType {
    public static var code: String {
        return "SRD"
    }
    
    public static var name: String {
        return "Surinam Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 南苏丹
public enum SSP: CurrencyType {
    public static var code: String {
        return "SSP"
    }
    
    public static var name: String {
        return "South Sudanese Pound"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 圣多美和普林西比
public enum STN: CurrencyType {
    public static var code: String {
        return "STN"
    }
    
    public static var name: String {
        return "Dobra"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 萨尔瓦多
public enum SVC: CurrencyType {
    public static var code: String {
        return "SVC"
    }
    
    public static var name: String {
        return "El Salvador Colon"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 叙利亚
public enum SYP: CurrencyType {
    public static var code: String {
        return "SYP"
    }
    
    public static var name: String {
        return "Syrian Pound"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 埃斯瓦蒂尼[13]
public enum SZL: CurrencyType {
    public static var code: String {
        return "SZL"
    }
    
    public static var name: String {
        return "Lilangeni"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 泰国
public enum THB: CurrencyType {
    public static var code: String {
        return "THB"
    }
    
    public static var name: String {
        return "Baht"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 塔吉克斯坦
public enum TJS: CurrencyType {
    public static var code: String {
        return "TJS"
    }
    
    public static var name: String {
        return "Somoni"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 土库曼斯坦
public enum TMT: CurrencyType {
    public static var code: String {
        return "TMT"
    }
    
    public static var name: String {
        return "Turkmenistan New Manat"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 突尼斯
public enum TND: CurrencyType {
    public static var code: String {
        return "TND"
    }
    
    public static var name: String {
        return "Tunisian Dinar"
    }
    
    public static var minorUnit: Int {
        return 3
    }
}

/// MARK - 汤加
public enum TOP: CurrencyType {
    public static var code: String {
        return "TOP"
    }
    
    public static var name: String {
        return "Pa’anga"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 火鸡
public enum TRY: CurrencyType {
    public static var code: String {
        return "TRY"
    }
    
    public static var name: String {
        return "Turkish Lira"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 特立尼达和多巴哥
public enum TTD: CurrencyType {
    public static var code: String {
        return "TTD"
    }
    
    public static var name: String {
        return "Trinidad and Tobago Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 台湾
public enum TWD: CurrencyType {
    public static var code: String {
        return "TWD"
    }
    
    public static var name: String {
        return "New Taiwan Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 坦桑尼亚
public enum TZS: CurrencyType {
    public static var code: String {
        return "TZS"
    }
    
    public static var name: String {
        return "Tanzanian Shilling"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 乌克兰
public enum UAH: CurrencyType {
    public static var code: String {
        return "UAH"
    }
    
    public static var name: String {
        return "Hryvnia"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 乌干达
public enum UGX: CurrencyType {
    public static var code: String {
        return "UGX"
    }
    
    public static var name: String {
        return "Uganda Shilling"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 美国，美属萨摩亚（AS），巴巴多斯（BB）（以及巴巴多斯元），百慕大（BM）（以及百慕大元），英属印度洋领地（IO）（也使用英镑），英属维尔京群岛（ VG），加勒比荷兰（BQ - Bonaire，Sint Eustatius和Saba），厄瓜多尔（EC），萨尔瓦多（SV），关岛（GU），海地（HT），马绍尔群岛（MH），密克罗尼西亚联邦（FM） ，北马里亚纳群岛（MP），帕劳（PW），巴拿马（PA）（以及巴拿马巴波亚），波多黎各（PR），东帝汶（TL），特克斯和凯科斯群岛（TC），美属维尔京群岛（VI），美国本土外小岛屿（ UM
public enum USD: CurrencyType {
    public static var code: String {
        return "USD"
    }
    
    public static var name: String {
        return "US Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 乌拉圭
public enum UYI: CurrencyType {
    public static var code: String {
        return "UYI"
    }
    
    public static var name: String {
        return "Uruguay Peso en Unidades Indexadas (UI)"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 乌拉圭
public enum UYU: CurrencyType {
    public static var code: String {
        return "UYU"
    }
    
    public static var name: String {
        return "Peso Uruguayo"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 乌兹别克斯坦
public enum UZS: CurrencyType {
    public static var code: String {
        return "UZS"
    }
    
    public static var name: String {
        return "Uzbekistan Sum"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 委内瑞拉
public enum VES: CurrencyType {
    public static var code: String {
        return "VEF"
    }
    
    public static var name: String {
        return "Bolívar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 越南
public enum VND: CurrencyType {
    public static var code: String {
        return "VND"
    }
    
    public static var name: String {
        return "Dong"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 瓦努阿图
public enum VUV: CurrencyType {
    public static var code: String {
        return "VUV"
    }
    
    public static var name: String {
        return "Vatu"
    }
    
    public static var minorUnit: Int {
        return 0
    }
}

/// MARK - 萨摩亚
public enum WST: CurrencyType {
    public static var code: String {
        return "WST"
    }
    
    public static var name: String {
        return "Tala"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 安圭拉（大赦国际），安提瓜和巴布达（AG），多米尼克（DM），格林纳达（GD），蒙特塞拉特（MS），圣基茨和尼维斯（KN），圣卢西亚（LC），圣文森特和格林纳丁斯（VC
public enum XCD: CurrencyType {
    public static var code: String {
        return "XCD"
    }
    
    public static var name: String {
        return "East Caribbean Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 也门
public enum YER: CurrencyType {
    public static var code: String {
        return "YER"
    }
    
    public static var name: String {
        return "Yemeni Rial"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 南非
public enum ZAR: CurrencyType {
    public static var code: String {
        return "ZAR"
    }
    
    public static var name: String {
        return "Rand"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 赞比亚
public enum ZMW: CurrencyType {
    public static var code: String {
        return "ZMW"
    }
    
    public static var name: String {
        return "Zambian Kwacha"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}

/// MARK - 津巴布韦
public enum ZWL: CurrencyType {
    public static var code: String {
        return "ZWL"
    }
    
    public static var name: String {
        return "Zimbabwe Dollar"
    }
    
    public static var minorUnit: Int {
        return 2
    }
}
