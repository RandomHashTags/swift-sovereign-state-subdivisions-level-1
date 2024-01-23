//
//  SubdivisionsNorthMacedonia.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsNorthMacedonia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_North_Macedonia // TODO: fix - 84 subdivisions, but it says only 80 ?????????
    case bro
    
    public var country : Locale.Region {
        return Locale.Region.northMacedonia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public var countiesType : (any SovereignStateLevel2Division.Type)? {
        return nil
    }
    
    public var citiesType : (any SovereignStateCity.Type)? {
        return nil
    }
}
