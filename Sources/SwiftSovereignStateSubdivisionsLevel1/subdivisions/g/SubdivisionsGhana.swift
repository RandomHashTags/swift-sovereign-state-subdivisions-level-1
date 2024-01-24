//
//  SubdivisionsGhana.swift
//  
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsGhana : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Ghana
    case ahafo
    case ashanti
    case bono
    case bono_east
    case central
    case eastern
    case greater_accra
    case north_east
    case northern
    case oti
    case savannah
    case upper_east
    case upper_west
    case volta
    case western
    case western_north
    
    public var country : Locale.Region {
        return Locale.Region.ghana
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix: String? {
        switch self {
        case .central,
                .eastern,
                .northern,
                .western:
            return "_Region_(Ghana)"
        case .north_east:
            return "_Region,_Ghana"
        default:
            return "_Region"
        }
    }
}