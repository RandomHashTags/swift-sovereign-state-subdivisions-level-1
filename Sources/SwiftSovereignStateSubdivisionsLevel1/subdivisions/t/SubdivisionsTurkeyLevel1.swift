//
//  SubdivisionsTurkeyLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation
import SwiftSovereignStates

public typealias SubdivisionsTurkeyLevel1 = Locale.Region.Subdivision.Level1.Turkey

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.turkey, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Turkey : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsTurkeyLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Turkey
    static let adana = get("01")
    static let adiyaman = get("02")
    static let afyonkarahisar = get("03")
    static let ağri = get("04")
    static let aksaray = get("68")
    static let amasya = get("05")
    static let ankara = get("06")
    static let antalya = get("07")
    static let ardahan = get("75")
    static let artvin = get("08")
    static let aydın = get("09")
    static let balikesir = get("10")
    static let bartin = get("74")
    static let batman = get("72")
    static let bayburt = get("69")
    static let bilecik = get("11")
    static let bingol = get("12")
    static let bitlis = get("13")
    static let bolu = get("14")
    static let burdur = get("15")
    static let bursa = get("16")
    static let canakkale = get("17")
    static let cankiri = get("18")
    static let corum = get("19")
    static let denizli = get("20")
    static let diyarbakir = get("21")
    static let duzce = get("81")
    static let edirne = get("22")
    static let elazig = get("23")
    static let erzincan = get("24")
    static let erzurum = get("25")
    static let eskisehir = get("26")
    static let gaziantep = get("27")
    static let giresun = get("28")
    static let gumushane = get("29")
    static let hakkari = get("30")
    static let hatay = get("31")
    static let igdir = get("76")
    static let isparta = get("32")
    static let istanbul = get("34")
    static let izmir = get("35")
    static let kahramanmaras = get("46")
    static let karabuk = get("78")
    static let karaman = get("70")
    static let kars = get("36")
    static let kastamonu = get("37")
    static let kayseri = get("38")
    static let kilis = get("79")
    static let kirikkale = get("71")
    static let kirklareli = get("39")
    static let kirsehir = get("40")
    static let kocaeli = get("41")
    static let konya = get("42")
    static let kutahya = get("43")
    static let malatya = get("44")
    static let manisa = get("45")
    static let mardin = get("47")
    static let mersin = get("33")
    static let mugla = get("48")
    static let mus = get("49")
    static let nevsehir = get("50")
    static let nigde = get("51")
    static let ordu = get("52")
    static let osmaniye = get("80")
    static let rize = get("53")
    static let sakarya = get("54")
    static let samsun = get("55")
    static let sanliurfa = get("63")
    static let siirt = get("56")
    static let sinop = get("57")
    static let sirnak = get("73")
    static let sivas = get("58")
    static let tekirdag = get("59")
    static let tokat = get("60")
    static let trabzon = get("61")
    static let tunceli = get("62")
    static let usak = get("64")
    static let van = get("65")
    static let yalova = get("77")
    static let yozgat = get("66")
    static let zonguldak = get("67")
}
