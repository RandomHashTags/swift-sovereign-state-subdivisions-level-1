//
//  SubdivisionsBahrain.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsBahrain : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Bahrain
    case capital
    case muharraq
    case northern
    case southern
    
    public var country : Locale.Region {
        return Locale.Region.bahrain
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .capital: return "b/bb/Bahrain_Capital_Governorate_Flag"
        case .muharraq: return "3/3d/Bahrain_Muharraq_Governorate_Flag"
        case .northern: return "1/19/Bahrain_Northern_Governorate_Flag"
        case .southern: return "2/2b/Bahrain_Southern_Governorate_Flag"
        }
    }
    
    public var countiesType : (any SovereignStateLevel2Division.Type)? {
        return nil
    }
    
    public var citiesType : (any SovereignStateCity.Type)? {
        return nil
    }
}
