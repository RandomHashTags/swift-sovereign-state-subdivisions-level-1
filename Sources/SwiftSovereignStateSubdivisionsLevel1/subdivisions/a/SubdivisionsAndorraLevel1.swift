//
//  SubdivisionsAndorraLevel1.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation
import SwiftSovereignStates

public typealias SubdivisionsAndorraLevel1 = Locale.Region.Subdivision.Level1.Andorra

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.andorra, allSameType: true, type: Locale.Region.SubdivisionType.parish)
    struct Andorra : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsAndorraLevel1 { // https://en.wikipedia.org/wiki/Parishes_of_Andorra
    static let andorra_la_vella = get("7")
    static let canillo = get("2")
    static let encamp = get("3")
    static let escaldes_engordany = get("8")
    static let la_massana = get("4")
    static let ordino = get("5")
    static let sant_julia_de_loria = get("6")
}
