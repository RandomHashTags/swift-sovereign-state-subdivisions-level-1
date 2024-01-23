//
//  SubdivisionsColombia.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsColombia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Colombia
    case amazonas
    case antioquia
    case arauca
    case atlantico
    case bolivar
    case boyaca
    case caldas
    case caqueta
    case casanare
    case cauca
    case cesar
    case choco
    case cordoba
    case cundinamarca
    case guainia
    case guaviare
    case huila
    case la_guajira
    case magdalena
    case meta
    case narino
    case norte_de_santander
    case putumayo
    case quindio
    case risaralda
    case san_andres_y_providencia // TODO: fix wikipedia url
    case santander
    case sucre
    case toluma
    case valle_del_cauca
    case vaupes
    case vichada
    
    case bogota
    
    public var country : Locale.Region {
        return Locale.Region.colombia
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bogota:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.departments
        }
    }
    
    public var wikipediaURLPrefix : String? {
        switch self {
        case .san_andres_y_providencia:
            return "Archipelago_of_"
        default:
            return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bogota:
            return nil
        case .san_andres_y_providencia:
            return ",_Providencia_and_Santa_Catalina"
        default:
            return "_" + type_suffix
        }
    }
}
