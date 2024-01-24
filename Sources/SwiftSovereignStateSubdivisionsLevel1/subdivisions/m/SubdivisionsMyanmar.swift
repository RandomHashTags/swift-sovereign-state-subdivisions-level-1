//
//  SubdivisionsMyanmar.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsMyanmar : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Myanmar
    case ayeyarwady
    case bago
    case chin
    case kachin
    case kayah
    case kayin
    case magway
    case mandalay
    case mon
    case naypyidaw
    case rakhine
    case sagaing
    case shan
    case tanintharyi
    case yangon
    
    case danu
    case kokang
    case naga
    case pa_laung
    case pa_o
    case wa
    
    public var country : Locale.Region {
        return Locale.Region.myanmar
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .ayeyarwady,
                .bago,
                .magway,
                .mandalay,
                .sagaing,
                .tanintharyi,
                .yangon:
            return SovereignStateSubdivisionType.regions
        case .chin,
                .kachin,
                .kayah,
                .kayin,
                .mon,
                .rakhine,
                .shan:
            return SovereignStateSubdivisionType.states
        case .naypyidaw:
            return SovereignStateSubdivisionType.union_territories
            
        case .danu,
                .kokang,
                .naga,
                .pa_laung,
                .pa_o:
            return SovereignStateSubdivisionType.self_administered_zone
        case .wa:
            return SovereignStateSubdivisionType.self_administered_division
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        default:
            return "_" + type_suffix
        }
    }
}
