//
//  SubdivisionsCroatia.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsCroatia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Croatia
    case bjelovar_bilogora
    case brod_posavina
    case dubrovnik_neretva
    case istria
    case karlovac
    case koprivnica_krizevci
    case krapina_zagorje
    case lika_senj
    case medimurje
    case osijek_baranja
    case pozega_slavonia
    case primorje_gorski_kotar
    case sibenik_knin
    case sisak_moslavina
    case split_dalmatia
    case varazdin
    case virovitica_podravina
    case vikovar_syrmia
    case zadar
    case zagreb
    case zagreb_city
    
    public var country : Locale.Region {
        return Locale.Region.croatia
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .zagreb_city:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.counties
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .zagreb_city:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
