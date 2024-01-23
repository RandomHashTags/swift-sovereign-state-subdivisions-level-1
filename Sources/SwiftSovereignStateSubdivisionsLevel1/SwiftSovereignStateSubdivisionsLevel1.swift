//
//  SwiftSovereignStateSubdivisionsLevel1.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

public extension Locale.Region {
    /// The level-1 administrative units this Region claims territorial ownership of.
    var subdivisions : [any SovereignStateSubdivision]? {
        guard let subdivisionType:any SovereignStateSubdivision.Type = subdivisionType else { return nil }
        return (subdivisionType.allCases as! [any SovereignStateSubdivision])
    }
    var subdivisionType : (any SovereignStateSubdivision.Type)? {
        switch self {
        case .afghanistan: return SubdivisionsAfghanistan.self
        case .albania: return SubdivisionsAlbania.self
        case .algeria: return SubdivisionsAlgeria.self
        case .andorra: return SubdivisionsAndorra.self
        case .angola: return SubdivisionsAngola.self
        case .anguilla: return nil
        case .antiguaBarbuda: return SubdivisionsAntiguaAndBarbuda.self
        case .argentina: return SubdivisionsArgentina.self
        case .armenia: return SubdivisionsArmenia.self
        case .aruba: return nil
        case .australia: return SubdivisionsAustralia.self
        case .austria: return SubdivisionsAustria.self
        case .azerbaijan: return SubdivisionsAzerbaijan.self
        
        case .bahamas: return SubdivisionsBahamas.self
        case .bahrain: return SubdivisionsBahrain.self
        case .bangladesh: return SubdivisionsBangladesh.self
        case .barbados: return SubdivisionsBarbados.self
        case .belarus: return SubdivisionsBelarus.self
        case .belize: return SubdivisionsBelize.self
        case .benin: return SubdivisionsBenin.self
        case .bermuda: return SubdivisionsBermuda.self
        case .bhutan: return SubdivisionsBhutan.self
        case .bolivia: return SubdivisionsBolivia.self
        case .bosniaHerzegovina: return nil
        case .botswana: return SubdivisionsBotswana.self
        case .brazil: return SubdivisionsBrazil.self
        case .brunei: return nil
        case .bulgaria: return SubdivisionsBulgaria.self
        case .burkinaFaso: return SubdivisionsBurkinaFaso.self
        case .burundi: return SubdivisionsBurundi.self
        
        case .cambodia: return SubdivisionsCambodia.self
        case .cameroon: return SubdivisionsCameroon.self
        case .canada: return SubdivisionsCanada.self
        case .capeVerde: return nil
        case .centralAfricanRepublic: return SubdivisionsCentralAfricanRepublic.self
        case .chad: return SubdivisionsChad.self
        case .chile: return SubdivisionsChile.self
        case .chinaMainland: return nil
        case .colombia: return nil
        case .comoros: return SubdivisionsComoros.self
        case .congoBrazzaville: return nil
        case .costaRica: return SubdivisionsCostaRica.self
        case .croatia: return nil
        case .cuba: return SubdivisionsCuba.self
        case .cyprus: return nil
        case .czechia: return SubdivisionsCzechRepublic.self
        
        case .congoKinshasa: return nil
        case .denmark: return SubdivisionsDenmark.self
        case .djibouti: return SubdivisionsDjibouti.self
        case .dominica: return SubdivisionsDominica.self
        case .dominicanRepublic: return SubdivisionsDominicanRepublic.self
            
        case .ecuador: return SubdivisionsEcuador.self
        case .egypt: return SubdivisionsEgypt.self
        case .elSalvador: return SubdivisionsElSalvador.self
        case .equatorialGuinea: return nil
        case .eritrea: return SubdivisionsEritrea.self
        case .estonia: return SubdivisionsEstonia.self
        case .eswatini: return nil
        case .ethiopia: return SubdivisionsEthiopia.self
        
        case .fiji: return SubdivisionsFiji.self
        case .finland: return SubdivisionsFinland.self
        case .france: return SubdivisionsFrance.self
            
        case .gabon: return nil
        case .gambia: return nil
        case .georgia: return nil
        case .germany: return SubdivisionsGermany.self
        case .ghana: return nil
        case .greece: return SubdivisionsGreece.self
        case .greenland: return SubdivisionsGreenland.self
        case .grenada: return SubdivisionsGrenada.self
        case .guam: return nil
        case .guadeloupe: return SubdivisionsGuadeloupe.self
        case .guatemala: return SubdivisionsGuatemala.self
        case .guinea: return SubdivisionsGuinea.self
        case .guineaBissau: return nil
        case .guyana: return nil
            
        case .haiti: return SubdivisionsHaiti.self
        case .honduras: return SubdivisionsHonduras.self
        case .hungary: return SubdivisionsHungary.self
        
        case .iceland: return SubdivisionsIceland.self
        case .india: return SubdivisionsIndia.self
        case .indonesia: return SubdivisionsIndonesia.self
        case .iraq: return SubdivisionsIraq.self
        case .iran: return SubdivisionsIran.self
        case .ireland: return SubdivisionsIreland.self
        case .israel: return SubdivisionsIsrael.self
        case .italy: return SubdivisionsItaly.self
        case .côteDIvoire: return SubdivisionsIvoryCoast.self
        
        case .jamaica: return SubdivisionsJamaica.self
        case .japan: return SubdivisionsJapan.self
        case .jersey: return SubdivisionsJersey.self
        case .jordan: return SubdivisionsJordan.self
        
        case .kazakhstan: return SubdivisionsKazakhstan.self
        case .kenya: return SubdivisionsKenya.self
        case .kiribati: return nil
        case .kosovo: return SubdivisionsKosovo.self
        case .kuwait: return SubdivisionsKuwait.self
        case .kyrgyzstan: return SubdivisionsKyrgyzstan.self
        
        case .laos: return SubdivisionsLaos.self
        case .latvia: return SubdivisionsLatvia.self
        case .lebanon: return SubdivisionsLebanon.self
        case .lesotho: return SubdivisionsLesotho.self
        case .liberia: return SubdivisionsLiberia.self
        case .libya: return SubdivisionsLibya.self
        case .liechtenstein: return SubdivisionsLiechtenstein.self
        case .lithuania: return SubdivisionsLithuania.self
        case .luxembourg: return SubdivisionsLuxembourg.self
        
        case .madagascar: return SubdivisionsMadagascar.self
        case .malawi: return nil
        case .malaysia: return SubdivisionsMalaysia.self
        case .maldives: return SubdivisionsMaldives.self
        case .mali: return SubdivisionsMali.self
        case .malta: return SubdivisionsMalta.self
        case .marshallIslands: return SubdivisionsMarshallIslands.self
        case .mauritania: return SubdivisionsMauritania.self
        case .mauritius: return SubdivisionsMauritius.self
        case .mexico: return SubdivisionsMexico.self
        case .micronesia: return SubdivisionsMicronesia.self
        case .moldova: return SubdivisionsMoldova.self
        case .monaco: return nil
        case .mongolia: return SubdivisionsMongolia.self
        case .montenegro: return SubdivisionsMontenegro.self
        case .morocco: return SubdivisionsMorocco.self
        case .mozambique: return SubdivisionsMozambique.self
        case .myanmar: return nil
        
        case .namibia: return SubdivisionsNamibia.self
        case .nauru: return SubdivisionsNauru.self
        case .nepal: return SubdivisionsNepal.self
        case .netherlands: return SubdivisionsNetherlands.self
        case .newZealand: return SubdivisionsNewZealand.self
        case .nicaragua: return SubdivisionsNicaragua.self
        case .niger: return SubdivisionsNiger.self
        case .nigeria: return SubdivisionsNigeria.self
        case .northKorea: return nil
        case .northMacedonia: return nil
        case .norway: return SubdivisionsNorway.self
            
        case .oman: return SubdivisionsOman.self
            
        case .pakistan: return SubdivisionsPakistan.self
        case .palau: return SubdivisionsPalau.self
        case .palestine: return SubdivisionsPalestine.self
        case .panama: return SubdivisionsPanama.self
        case .papuaNewGuinea: return SubdivisionsPapuaNewGuinea.self
        case .paraguay: return SubdivisionsParaguay.self
        case .peru: return SubdivisionsPeru.self
        case .philippines: return SubdivisionsPhilippines.self
        case .poland: return SubdivisionsPoland.self
        case .portugal: return SubdivisionsPortugal.self
        
        case .qatar: return SubdivisionsQatar.self
        
        case .romania: return SubdivisionsRomania.self
        case .russia: return nil
        case .rwanda: return SubdivisionsRwanda.self
        
        case .saintKittsNevis: return nil
        case .saintLucia: return nil
        case .saintVincentGrenadines: return nil
        case .samoa: return SubdivisionsSamoa.self
        case .sãoToméPríncipe: return SubdivisionsSaoTomeAndPrincipe.self
        case .saudiArabia: return nil
        case .senegal: return SubdivisionsSenegal.self
        case .serbia: return nil
        case .seychelles: return nil
        case .sierraLeone: return nil
        case .singapore: return nil
        case .slovakia: return SubdivisionsSlovakia.self
        case .slovenia: return SubdivisionsSlovenia.self
        case .solomonIslands: return nil
        case .somalia: return SubdivisionsSomalia.self
        case .southAfrica: return SubdivisionsSouthAfrica.self
        case .southKorea: return SubdivisionsSouthKorea.self
        case .southSudan: return SubdivisionsSouthSudan.self
        case .spain: return SubdivisionsSpain.self
        case .sriLanka: return SubdivisionsSriLanka.self
        case .sudan: return nil
        case .suriname: return SubdivisionsSuriname.self
        case .sweden: return SubdivisionsSweden.self
        case .switzerland: return SubdivisionsSwitzerland.self
        case .syria: return SubdivisionsSyria.self
        
        case .tajikistan: return nil
        case .tanzania: return SubdivisionsTanzania.self
        case .thailand: return SubdivisionsThailand.self
        case .timorLeste: return SubdivisionsTimorLeste.self
        case .togo: return SubdivisionsTogo.self
        case .tonga: return SubdivisionsTonga.self
        case .trinidadTobago: return nil
        case .tunisia: return SubdivisionsTunisia.self
        case .turkey: return SubdivisionsTurkey.self
        case .turkmenistan: return SubdivisionsTurkmenistan.self
        case .tuvalu: return nil
        
        case .uganda: return SubdivisionsUganda.self
        case .ukraine: return SubdivisionsUkraine.self
        case .unitedArabEmirates: return nil
        case .unitedKingdom: return nil
        case .unitedStates: return SubdivisionsUnitedStates.self
        case .uruguay: return SubdivisionsUruguay.self
        case .uzbekistan: return SubdivisionsUzbekistan.self
        
        case .vanuatu: return SubdivisionsVanuatu.self
        case .vaticanCity: return nil
        case .venezuela: return SubdivisionsVenezuela.self
        case .vietnam: return SubdivisionsVietnam.self
        
        case .yemen: return SubdivisionsYemen.self
        
        case .zambia: return SubdivisionsZambia.self
        case .zimbabwe: return SubdivisionsZimbabwe.self
        default: return nil
        }
    }
}
