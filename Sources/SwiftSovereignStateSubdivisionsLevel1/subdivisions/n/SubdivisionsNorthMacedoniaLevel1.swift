//
//  SubdivisionsNorthMacedoniaLevel1.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation
import SwiftSovereignStates

public typealias SubdivisionsNorthMacedoniaLevel1 = Locale.Region.Subdivision.Level1.NorthMacedonia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.northMacedonia, allSameType: true, type: Locale.Region.SubdivisionType.municipality)
    struct NorthMacedonia : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsNorthMacedoniaLevel1 { // https://en.wikipedia.org/wiki/Municipalities_of_North_Macedonia | https://en.wikipedia.org/wiki/ISO_3166-2:MK
    static let aerodrom = get("801")
    static let aracinovo = get("802")
    static let berovo = get("201")
    static let bitola = get("501")
    static let bogdanci = get("401")
    static let bogovinje = get("601")
    static let bosilovo = get("402")
    static let brvenica = get("602")
    static let butel = get("803")
    static let cair = get("815")
    static let caska = get("109")
    static let centar = get("814")
    static let centarZupa = get("313")
    static let cesinovoOblesevo = get("210")
    static let cucerSandevo = get("816")
    static let debar = get("303")
    static let debrca = get("304")
    static let delcevo = get("203")
    static let demirHisar = get("502")
    static let demirKapija = get("103")
    static let dojran = get("406")
    static let dolneni = get("503")
    static let gaziBaba = get("804")
    static let gevgelija = get("405")
    static let gjorcePetrov = get("805")
    static let gostivar = get("604")
    static let gradsko = get("102")
    static let ilinden = get("807")
    static let jegunovce = get("606")
    static let karbinci = get("205")
    static let karpos = get("808")
    static let kavadarci = get("104")
    static let kicevo = get("307")
    static let kiselaVoda = get("809")
    static let kocani = get("206")
    static let konce = get("407")
    static let kratovo = get("701")
    static let krivaPalanka = get("702")
    static let krivogastani = get("504")
    static let krusevo = get("505")
    static let kumanovo = get("703")
    static let lipkovo = get("704")
    static let lozovo = get("105")
    static let makedonskaKamenica = get("207")
    static let makedonskiBrod = get("308")
    static let mavrovoIRostuse = get("607")
    static let mogila = get("506")
    static let negotino = get("106")
    static let novaci = get("507")
    static let novoSelo = get("408")
    static let ohrid = get("310")
    static let pehcevo = get("208")
    static let petrovec = get("810")
    static let plasnica = get("311")
    static let prilep = get("508")
    static let probistip = get("209")
    static let radovis = get("409")
    static let rankovce = get("705")
    static let resen = get("509")
    static let rosoman = get("107")
    static let stip = get("211")
    static let saraj = get("811")
    static let sopiste = get("812")
    static let staroNagoricane = get("706")
    static let struga = get("312")
    static let strumica = get("410")
    static let studenicani = get("813")
    static let sutoOrizari = get("817")
    static let svetNikole = get("108")
    static let tearce = get("608")
    static let tetovo = get("609")
    static let valandovo = get("403")
    static let vasilevo = get("404")
    static let veles = get("101")
    static let vevcani = get("301")
    static let vinica = get("202")
    static let vrapciste = get("603")
    static let zelenikovo = get("806")
    static let zelino = get("605")
    static let zrnovci = get("204")
}