//
//  SubdivisionsIreland.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsIreland : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Ireland
    case connacht
    case leinster
    case munster
    case ulster
    
    public var country : Locale.Region {
        return Locale.Region.ireland
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
    
    public var countiesType : (any SovereignStateLevel2Division.Type)? {
        return nil
    }
    
    public var citiesType : (any SovereignStateCity.Type)? {
        return nil
    }
}
