//
//  SubdivisionsBelize.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsBelize : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Belize
    case belize
    case cayo
    case corozal
    case orange_walk
    case stann_creek
    case toledo
    
    public var country : Locale.Region {
        return Locale.Region.belize
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var countiesType : (any SovereignStateLevel2Division.Type)? {
        return nil
    }
    
    public var citiesType : (any SovereignStateCity.Type)? {
        return nil
    }
}
