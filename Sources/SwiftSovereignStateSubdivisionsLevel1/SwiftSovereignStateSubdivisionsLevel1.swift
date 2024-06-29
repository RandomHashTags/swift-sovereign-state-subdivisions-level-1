//
//  SwiftSovereignStateSubdivisionsLevel1.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

@attached(member, names: arbitrary)
macro SubdivisionLevel1(region: Locale.Region, allSameType: Bool, type: Locale.Region.SubdivisionType) = #externalMacro(module: "Macros", type: "SubdivisionLevel1")

// MARK: Locale.Region.Subdivision.Level1
public extension Locale.Region.Subdivision {
    enum Level1 {
    }
    protocol Level1Protocol : Locale.Region.SubdivisionProtocol {
        var neighbors : [any Locale.Region.Subdivision.Level1Protocol] { get }
    }
}
public extension Locale.Region.Subdivision.Level1Protocol {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] { [] }
}

// MARK: Locale.Region subdivisionLevel1Type
public extension Locale.Region {
    var subdivisionLevel1Type : (any Locale.Region.Subdivision.Level1Protocol.Type)? {
        switch self {
        case .abkhazia: return SubdivisionsAbkhaziaLevel1.self
        case .afghanistan: return SubdivisionsAfghanistanLevel1.self
        case .albania: return SubdivisionsAlbaniaLevel1.self
        case .algeria: return SubdivisionsAlgeriaLevel1.self
        case .andorra: return SubdivisionsAndorraLevel1.self
        case .angola: return SubdivisionsAngolaLevel1.self
        case .anguilla: return SubdivisionsAnguillaLevel1.self
        case .antarctica: return nil
        case .antiguaBarbuda: return SubdivisionsAntiguaAndBarbudaLevel1.self
        case .argentina: return SubdivisionsArgentinaLevel1.self
        case .armenia: return SubdivisionsArmeniaLevel1.self
        case .aruba: return nil
        case .ålandIslands: return nil
        case .australia: return SubdivisionsAustraliaLevel1.self
        case .austria: return SubdivisionsAustriaLevel1.self
        case .azerbaijan: return SubdivisionsAzerbaijanLevel1.self
        
        case .bahamas: return SubdivisionsBahamasLevel1.self
        case .bahrain: return SubdivisionsBahrainLevel1.self
        case .bangladesh: return SubdivisionsBangladeshLevel1.self
        case .barbados: return SubdivisionsBarbadosLevel1.self
        case .belarus: return SubdivisionsBelarusLevel1.self
        case .belize: return SubdivisionsBelizeLevel1.self
        case .benin: return SubdivisionsBeninLevel1.self
        case .bermuda: return SubdivisionsBermudaLevel1.self
        case .bhutan: return SubdivisionsBhutanLevel1.self
        case .bolivia: return SubdivisionsBoliviaLevel1.self
        case .bosniaHerzegovina: return nil
        case .botswana: return SubdivisionsBotswanaLevel1.self
        case .bouvetIsland: return nil
        case .brazil: return SubdivisionsBrazilLevel1.self
        case .britishVirginIslands: return nil
        case .brunei: return SubdivisionsBruneiLevel1.self
        case .bulgaria: return SubdivisionsBulgariaLevel1.self
        case .burkinaFaso: return SubdivisionsBurkinaFasoLevel1.self
        case .burundi: return SubdivisionsBurundiLevel1.self
        
        case .cambodia: return SubdivisionsCambodiaLevel1.self
        case .cameroon: return SubdivisionsCameroonLevel1.self
        case .canada: return SubdivisionsCanadaLevel1.self
        case .capeVerde: return SubdivisionsCapeVerdeLevel1.self
        case .caymanIslands: return nil
        case .centralAfricanRepublic: return SubdivisionsCentralAfricanRepublicLevel1.self
        case .chad: return SubdivisionChadLevel1.self
        case .chile: return SubdivisionsChileLevel1.self
        case .chinaMainland: return nil
        case .christmasIsland: return nil
        case .cocosIslands: return nil
        case .colombia: return SubdivisionsColombiaLevel1.self
        case .cookIslands: return nil
        case .comoros: return SubdivisionsComorosLevel1.self
        case .congoBrazzaville: return nil
        case .congoKinshasa: return nil
        case .costaRica: return SubdivisionsCostaRicaLevel1.self
        case .croatia: return SubdivisionsCroatiaLevel1.self
        case .cuba: return SubdivisionsCubaLevel1.self
        case .curaçao: return nil
        case .cyprus: return nil
        case .czechia: return SubdivisionsCzechRepublicLevel1.self
        
        case .denmark: return SubdivisionsDenmarkLevel1.self
        case .djibouti: return SubdivisionsDjiboutiLevel1.self
        case .dominica: return SubdivisionsDominicaLevel1.self
        case .dominicanRepublic: return SubdivisionsDominicanRepublicLevel1.self
            
        case .ecuador: return SubdivisionsEcuadorLevel1.self
        case .egypt: return SubdivisionsEgyptLevel1.self
        case .elSalvador: return SubdivisionsElSalvadorLevel1.self
        case .equatorialGuinea: return nil
        case .eritrea: return SubdivisionsEritreaLevel1.self
        case .estonia: return SubdivisionsEstoniaLevel1.self
        case .eswatini: return nil
        case .ethiopia: return SubdivisionsEthiopiaLevel1.self
        
        case .falklandIslands: return nil
        case .faroeIslands: return nil
        case .fiji: return SubdivisionsFijiLevel1.self
        case .finland: return SubdivisionsFinlandLevel1.self
        case .france: return SubdivisionsFranceLevel1.self
        case .frenchGuiana: return nil
        case .frenchPolynesia: return nil
        case .frenchSouthernTerritories: return nil
            
        case .gabon: return SubdivisionsGabonLevel1.self
        case .gambia: return SubdivisionsGambiaLevel1.self
        case .georgia: return nil
        case .germany: return SubdivisionsGermanyLevel1.self
        case .ghana: return SubdivisionsGhanaLevel1.self
        case .gibraltar: return nil
        case .greece: return SubdivisionsGreeceLevel1.self
        case .greenland: return SubdivisionsGreenlandLevel1.self
        case .grenada: return SubdivisionsGrenadaLevel1.self
        case .guam: return nil
        //case .guadeloupe: return SubdivisionsGuadeloupe.self
        case .guatemala: return SubdivisionsGuatemalaLevel1.self
        case .guernsey: return nil
        case .guinea: return SubdivisionsGuineaLevel1.self
        case .guineaBissau: return nil
        case .guyana: return SubdivisionsGuyanaLevel1.self
            
        case .haiti: return SubdivisionsHaitiLevel1.self
        case .heardMcdonaldIslands: return nil
        case .honduras: return SubdivisionsHondurasLevel1.self
        case .hongKong: return nil
        case .hungary: return SubdivisionsHungaryLevel1.self
        
        case .iceland: return SubdivisionsIcelandLevel1.self
        case .india: return SubdivisionsIndiaLevel1.self
        case .indonesia: return SubdivisionsIndonesiaLevel1.self
        case .iraq: return SubdivisionsIraqLevel1.self
        case .iran: return SubdivisionsIranLevel1.self
        case .ireland: return SubdivisionsIrelandLevel1.self
        case .isleOfMan: return nil
        case .israel: return SubdivisionsIsraelLevel1.self
        case .italy: return SubdivisionsItalyLevel1.self
        case .côteDIvoire: return SubdivisionsIvoryCoastaLevel1.self
        
        case .jamaica: return SubdivisionsJamaicaLevel1.self
        case .japan: return SubdivisionsJapanLevel1.self
        case .jersey: return SubdivisionsJerseyLevel1.self
        case .jordan: return SubdivisionsJordanLevel1.self
        
        case .kazakhstan: return SubdivisionsKazakhstanLevel1.self
        case .kenya: return SubdivisionsKenyaLevel1.self
        case .kiribati: return nil
        case .kosovo: return SubdivisionsKosovoLevel1.self
        case .kuwait: return SubdivisionsKuwaitLevel1.self
        case .kyrgyzstan: return SubdivisionsKyrgyzstanLevel1.self
        
        case .laos: return SubdivisionsLaosLevel1.self
        case .latvia: return SubdivisionsLatviaLevel1.self
        case .lebanon: return SubdivisionsLebanonLevel1.self
        case .lesotho: return SubdivisionsLesothoLevel1.self
        case .liberia: return SubdivisionsLiberiaLevel1.self
        case .libya: return SubdivisionsLibyaLevel1.self
        case .liechtenstein: return SubdivisionsLiechtensteinLevel1.self
        case .lithuania: return SubdivisionsLithuaniaLevel1.self
        case .luxembourg: return SubdivisionsLuxembourgLevel1.self
        
        case .macao: return nil
        case .madagascar: return SubdivisionsMadagascarLevel1.self
        case .malawi: return SubdivisionsMalawiLevel1.self
        case .malaysia: return SubdivisionsMalaysiaLevel1.self
        case .maldives: return SubdivisionsMaldivesLevel1.self
        case .mali: return SubdivisionsMaliLevel1.self
        case .malta: return SubdivisionsMaltaLevel1.self
        case .marshallIslands: return SubdivisionsMarshallIslandsLevel1.self
        case .martinique: return nil
        case .mauritania: return SubdivisionsMauritaniaLevel1.self
        //case .mauritius: return SubdivisionsMauritius.self
        case .mayotte: return nil
        case .mexico: return SubdivisionsMexicoLevel1.self
        case .micronesia: return SubdivisionsMicronesiaLevel1.self
        case .moldova: return SubdivisionsMoldovaLevel1.self
        case .monaco: return SubdivisionsMonacoLevel1.self
        case .mongolia: return SubdivisionsMongoliaLevel1.self
        case .montenegro: return SubdivisionsMontenegroLevel1.self
        case .montserrat: return nil
        case .morocco: return SubdivisionsMoroccoLevel1.self
        case .mozambique: return SubdivisionsMozambiqueLevel1.self
        case .myanmar: return SubdivisionsMyanmarLevel1.self
        
        case .namibia: return SubdivisionsNamibiaLevel1.self
        case .nauru: return SubdivisionsNauruLevel1.self
        case .nepal: return SubdivisionsNepalLevel1.self
        case .netherlands: return SubdivisionsNetherlandsLevel1.self
        case .newCaledonia: return nil
        case .newZealand: return SubdivisionsNewZealandLevel1.self
        case .nicaragua: return SubdivisionsNicaraguaLevel1.self
        case .niger: return SubdivisionsNigerLevel1.self
        case .nigeria: return SubdivisionsNigeriaLevel1.self
        case .niue: return nil
        case .norfolkIsland: return nil
        case .northernCyprus: return nil
        case .northernMarianaIslands: return nil
        case .northKorea: return SubdivisionsNorthKoreaLevel1.self
        case .northMacedonia: return SubdivisionsNorthMacedoniaLevel1.self
        case .norway: return SubdivisionsNorwayLevel1.self
            
        case .oman: return SubdivisionsOmanLevel1.self
            
        case .pakistan: return SubdivisionsPakistanLevel1.self
        case .palau: return SubdivisionsPalauLevel1.self
        case .palestine: return SubdivisionsPalestineLevel1.self
        case .panama: return SubdivisionsPanamaLevel1.self
        case .papuaNewGuinea: return SubdivisionsPapuaNewGuineaLevel1.self
        case .paraguay: return SubdivisionsParaguayLevel1.self
        case .peru: return SubdivisionsPeruLevel1.self
        case .philippines: return SubdivisionsPhilippinesLevel1.self
        case .pitcairnIslands: return nil
        case .poland: return SubdivisionsPolandLevel1.self
        case .portugal: return SubdivisionsPortugalLevel1.self
        case .puertoRico: return nil
        
        case .qatar: return SubdivisionsQatarLevel1.self
        
        case .réunion: return nil
        case .romania: return SubdivisionsRomaniaLevel1.self
        case .russia: return nil
        case .rwanda: return SubdivisionsRwandaLevel1.self
        
        case .saintKittsNevis: return SubdivisionsSaintKittsAndNevisLevel1.self
        case .saintLucia: return nil
        case .saintMartin: return nil
        case .saintPierreMiquelon: return nil
        case .saintVincentGrenadines: return nil
        case .samoa: return SubdivisionsSamoaLevel1.self
        case .sãoToméPríncipe: return SubdivisionsSaoTomeAndPrincipeLevel1.self
        case .saudiArabia: return nil
        case .senegal: return SubdivisionsSenegalLevel1.self
        case .serbia: return nil
        case .seychelles: return SubdivisionsSeychellesLevel1.self
        case .sierraLeone: return nil
        case .singapore: return nil
        case .sintMaarten: return nil
        case .slovakia: return SubdivisionsSlovakiaLevel1.self
        case .slovenia: return SubdivisionsSloveniaLevel1.self
        case .solomonIslands: return nil
        case .somalia: return SubdivisionsSomaliaLevel1.self
        case .southAfrica: return SubdivisionsSouthAfricaLevel1.self
        case .southGeorgiaSouthSandwichIslands: return nil
        case .southKorea: return SubdivisionsSouthKoreaLevel1.self
        case .southSudan: return SubdivisionsSouthSudanLevel1.self
        case .spain: return SubdivisionsSpainLevel1.self
        case .sriLanka: return SubdivisionsSriLankaLevel1.self
        case .sudan: return nil
        case .suriname: return SubdivisionsSurinameLevel1.self
        case .svalbardJanMayen: return nil
        case .sweden: return SubdivisionsSwedenLevel1.self
        case .switzerland: return SubdivisionsSwitzerlandLevel1.self
        case .syria: return SubdivisionsSyriaLevel1.self
        
        case .tajikistan: return nil
        case .tanzania: return SubdivisionsTanzaniaLevel1.self
        case .thailand: return SubdivisionsThailandLevel1.self
        case .timorLeste: return SubdivisionsTimorLesteLevel1.self
        case .togo: return SubdivisionsTogoLevel1.self
        case .tokelau: return nil
        case .tonga: return SubdivisionsTongaLevel1.self
        case .trinidadTobago: return nil
        case .tunisia: return SubdivisionsTunisiaLevel1.self
        case .turkey: return SubdivisionsTurkeyLevel1.self
        case .turkmenistan: return SubdivisionsTurkmenistanLevel1.self
        case .turksCaicosIslands: return nil
        case .tuvalu: return nil
        
        case .uganda: return SubdivisionsUgandaLevel1.self
        case .ukraine: return SubdivisionsUkraineLevel1.self
        case .unitedArabEmirates: return nil
        case .unitedKingdom: return nil
        case .unitedStates: return SubdivisionsUnitedStatesLevel1.self
        case .uruguay: return SubdivisionsUruguayLevel1.self
        case .uzbekistan: return SubdivisionsUzbekistanLevel1.self
        
        case .vanuatu: return SubdivisionsVanuatuLevel1.self
        case .vaticanCity: return nil
        case .venezuela: return SubdivisionsVenezuelaLevel1.self
        case .vietnam: return SubdivisionsVietnamLevel1.self
        
        case .yemen: return SubdivisionsYemenLevel1.self
        
        case .zambia: return SubdivisionsZambiaLevel1.self
        case .zimbabwe: return SubdivisionsZimbabweLevel1.self
        default: return nil
        }
    }
}