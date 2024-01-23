//
//  SubdivisionsSeychelles.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation
import SwiftSovereignStates

public enum SubdivisionsSeychelles : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Seychelles
    case anse_aux_pins
    case anse_boileau
    case anse_etoile
    case anse_royale
    case au_cap
    
    case baie_lazare
    case baie_sainte_anne
    case beau_vallon
    case bel_air
    case bel_ombre
    case cascade
    case english_river
    case glacis
    case grand_anse
    case grand_anse_praslin
    case la_digue_and_inner_islands
    case les_mamelles
    case mont_buxton
    case mont_fleuri
    case outer_islands
    case plaisance
    case pointe_la_rue
    case port_glaud
    case roche_caiman
    case saint_louis
    case takamaka
    
    public var country : Locale.Region {
        return Locale.Region.seychelles
    }
    
    public var type: SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .beau_vallon,
                .bel_air,
                .bel_ombre,
                .cascade,
                .english_river,
                .glacis,
                .plaisance,
                .saint_louis,
                .takamaka:
            return ",_Seychelles"
        case .outer_islands:
            return "_Seychelles"
        default:
            return nil
        }
    }
}
