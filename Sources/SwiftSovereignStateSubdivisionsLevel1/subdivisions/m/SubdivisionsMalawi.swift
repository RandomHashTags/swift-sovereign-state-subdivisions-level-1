//
//  SubdivisionsMalawi.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsMalawi : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Malawi
    case northern
    case central
    case southern
    
    public var country : Locale.Region {
        return Locale.Region.malawi
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        return "_Region,_Malawi"
    }
}
