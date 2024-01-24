//
//  SubdivisionsAbkhazia.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsAbkhazia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Abkhazia
    case gagra
    case gali
    case gudauta
    case gulripshi
    case ochamchira
    case sukhumi
    case tkvarcheli
    
    public var country : Locale.Region {
        return Locale.Region.abkhazia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .gali:
            return "_District,_Abkhazia"
        default:
             return "_District"
        }
    }
}
