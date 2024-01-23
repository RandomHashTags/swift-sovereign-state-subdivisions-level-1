//
//  SubdivisionsSuriname.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsSuriname : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Suriname
    case brokopondo
    case commewijne
    case coronie
    case marowijne
    case nickerie
    case para
    case paramaribo
    case saramacca
    case sipaliwini
    case wanica
    
    public var country : Locale.Region {
        return Locale.Region.suriname
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
