//
//  SubdivisionsMonaco.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsMonaco : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Monaco#Administrative_divisions
    case monaco
    
    public var country : Locale.Region {
        return Locale.Region.monaco
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public var wikipediaURLPrefix : String? {
        switch self {
        case .monaco:
            return "Municipality_of_"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .monaco:
            return nil
        }
    }
}
