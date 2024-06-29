//
//  SubdivisionsSloveniaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation
import SwiftSovereignStates

public typealias SubdivisionsSloveniaLevel1 = Locale.Region.Subdivision.Level1.Slovenia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.slovenia, allSameType: false, type: Locale.Region.SubdivisionType.municipality)
    struct Slovenia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .celje,
                    .koper,
                    .kranj,
                    .krsko,
                    .ljubljana,
                    .maribor,
                    .murska_sobota,
                    .nova_gorica,
                    .novo_mesto,
                    .ptuj,
                    .slovenj_gradec,
                    .velenje:
                return Locale.Region.SubdivisionType.cityMunicipality
            default:
                return Locale.Region.SubdivisionType.municipality
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsSloveniaLevel1 { // https://en.wikipedia.org/wiki/Municipalities_of_Slovenia | https://en.wikipedia.org/wiki/ISO_3166-2:SI
    static let ajdovscina = get("001")
    static let ankaran = get("213")
    static let apace = get("195")
    static let beltinci = get("002")
    static let benedikt = get("148")
    static let bistrica_ob_sotli = get("149")
    static let bled = get("003")
    static let bloke = get("150")
    static let bohinj = get("004")
    static let borovnica = get("005")
    static let bovec = get("006")
    static let braslovce = get("151")
    static let brda = get("007")
    static let brezice = get("009")
    static let brezovica = get("008")
    static let cankova = get("152")
    static let cerklje_na_gorenjskem = get("012")
    static let cerknica = get("013")
    static let cerkno = get("014")
    static let cerkvenjak = get("153")
    static let cirkulane = get("196")
    static let crensovci = get("015")
    static let crna_na_koroskem = get("016")
    static let crnomelj = get("017")
    static let destrnik = get("018")
    static let divaca = get("019")
    static let dobje = get("154")
    static let dobrepolje = get("020")
    static let dobrna = get("155")
    static let dobrova_polhov_gradec = get("021")
    static let dobrovnik = get("156")
    static let dol_pri_ljubljani = get("022")
    static let dolenjske_toplice = get("157")
    static let domzale = get("023")
    static let dornava = get("024")
    static let dravograd = get("025")
    static let duplek = get("026")
    static let gorenja_vas_poljane = get("027")
    static let gorisnica = get("028")
    static let gorje = get("207")
    static let gornja_radgona = get("029")
    static let gornji_grad = get("030")
    static let gornji_petrovci = get("031")
    static let grad = get("158")
    static let grosuplje = get("032")
    static let hajdina = get("159")
    static let hoce_slivnica = get("160")
    static let hodos = get("161")
    static let horjul = get("162")
    static let hrastnik = get("034")
    static let hrpelje_kozina = get("035")
    static let idrija = get("036")
    static let ig = get("037")
    static let ilirska_bistrica = get("038")
    static let ivancna_gorica = get("039")
    static let izola = get("040")
    static let jesenice = get("041")
    static let jezersko = get("163")
    static let jursinci = get("042")
    static let kamnik = get("043")
    static let kanal_ob_soci = get("044")
    static let kidricevo = get("045")
    static let kobarid = get("046")
    static let kobilje = get("047")
    static let kocevje = get("048")
    static let komen = get("049")
    static let komenda = get("164")
    static let kostanjevica_na_krki = get("197")
    static let kostel = get("165")
    static let kozje = get("051")
    static let kranjska_gora = get("053")
    static let krizevci = get("166")
    static let kungota = get("055")
    static let kuzma = get("056")
    static let lasko = get("057")
    static let lenart = get("058")
    static let lendava = get("059")
    static let litija = get("060")
    static let ljubno = get("062")
    static let ljutomer = get("063")
    static let log_dragomer = get("208")
    static let logatec = get("064")
    static let loska_dolina = get("065")
    static let loski_potok = get("066")
    static let lovrenc_na_pohorju = get("167")
    static let luce = get("067")
    static let lukovica = get("068")
    static let majsperk = get("069")
    static let makole = get("198")
    static let markovci = get("168")
    static let medvode = get("071")
    static let menges = get("072")
    static let metlika = get("073")
    static let mezica = get("074")
    static let miklavz_na_dravskem_polju = get("169")
    static let miren_kostanjevica = get("075")
    static let mirna = get("212")
    static let mirna_pec = get("170")
    static let mislinja = get("076")
    static let mokronog_trebelno = get("199")
    static let moravce = get("077")
    static let moravske_toplice = get("078")
    static let mozirje = get("079")
    static let muta = get("081")
    static let naklo = get("082")
    static let nazarje = get("083")
    static let odranci = get("086")
    static let oplotnica = get("171")
    static let ormoz = get("087")
    static let osilnica = get("088")
    static let pesnica = get("089")
    static let piran = get("090")
    static let pivka = get("091")
    static let podcetrtek = get("092")
    static let podlehnik = get("172")
    static let podvelka = get("093")
    static let poljcane = get("200")
    static let polzela = get("173")
    static let postojna = get("094")
    static let prebold = get("174")
    static let preddvor = get("095")
    static let prevalje = get("175")
    static let puconci = get("097")
    static let race_fram = get("098")
    static let radece = get("099")
    static let radenci = get("100")
    static let radlje_ob_dravi = get("101")
    static let radovljica = get("102")
    static let ravne_na_koroskem = get("103")
    static let razkrizje = get("176")
    static let recica_ob_savinji = get("209")
    static let rence_vogrsko = get("201")
    static let ribnica = get("104")
    static let ribnica_na_pohorju = get("177")
    static let rogaska_slatina = get("106")
    static let rogasovci = get("105")
    static let rogatec = get("107")
    static let ruse = get("108")
    static let salovci = get("033")
    static let selnica_ob_dravi = get("178")
    static let semic = get("109")
    static let sempeter_vrtojba = get("183")
    static let sencur = get("117")
    static let sentilj = get("118")
    static let sentjernej = get("119")
    static let sentjur = get("120")
    static let sentrupert = get("211")
    static let sevnica = get("110")
    static let sezana = get("111")
    static let skocjan = get("121")
    static let skofja_loka = get("122")
    static let skofljica = get("123")
    static let slovenska_bistrica = get("113")
    static let slovenske_konjice = get("114")
    static let smarje_pri_jelsah = get("124")
    static let smarjeske_toplice = get("206")
    static let smartno_ob_paki = get("125")
    static let smartno_pri_litiji = get("194")
    static let sodrazica = get("179")
    static let solcava = get("180")
    static let sostanj = get("126")
    static let sredisce_ob_dravi = get("202")
    static let starse = get("115")
    static let store = get("127")
    static let straza = get("203")
    static let sveta_ana = get("181")
    static let sveta_trojica_v_slovenskih_goricah = get("204")
    static let sveti_andraz_v_slovenskih_goricah = get("182")
    static let sveti_jurij_ob_scavnici = get("116")
    static let sveti_jurij_v_slovenskih_goricah = get("210")
    static let sveti_tomaz = get("205")
    static let tabor = get("184")
    static let tisina = get("010")
    static let tolmin = get("128")
    static let trbovlje = get("129")
    static let trebnje = get("130")
    static let trnovska_vas = get("185")
    static let trzic = get("131")
    static let trzin = get("186")
    static let turnisce = get("132")
    static let velika_polana = get("187")
    static let velike_lasce = get("134")
    static let verzej = get("188")
    static let videm = get("135")
    static let vipava = get("136")
    static let vitanje = get("137")
    static let vodice = get("138")
    static let vojnik = get("139")
    static let vransko = get("189")
    static let vrhnika = get("140")
    static let vuzenica = get("141")
    static let zagorje_ob_savi = get("142")
    static let zalec = get("190")
    static let zavrc = get("143")
    static let zelezniki = get("146")
    static let zetale = get("191")
    static let ziri = get("147")
    static let zirovnica = get("192")
    static let zrece = get("144")
    static let zuzemberk = get("193")
    
    // city municipalities
    static let celje = get("011")
    static let koper = get("050")
    static let kranj = get("052")
    static let krsko = get("054")
    static let ljubljana = get("061")
    static let maribor = get("070")
    static let murska_sobota = get("080")
    static let nova_gorica = get("084")
    static let novo_mesto = get("085")
    static let ptuj = get("096")
    static let slovenj_gradec = get("112")
    static let velenje = get("133")
}
