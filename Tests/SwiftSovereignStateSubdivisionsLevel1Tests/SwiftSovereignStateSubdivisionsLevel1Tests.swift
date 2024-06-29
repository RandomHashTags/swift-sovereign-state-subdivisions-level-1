//
//  SwiftSovereignStateSubdivisionsLevel1Tests.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import XCTest
@testable import SwiftSovereignStateSubdivisionsLevel1
import SwiftSovereignStates

final class SwiftSovereignStateSubdivisionsLevel1Tests : XCTestCase {
    func testExample() {
        /*var region_identifiers:[String] = [], region_names:[String] = [], region_cases:[String] = []
        var region_containing_regions:[String?:[String]] = [:], region_continents:[String?:[String]] = [:]
        for region in Locale.Region("005").subRegions {
            let identifier:String = region.identifier
            region_identifiers.append(identifier)
            let name:String = Locale.current.localizedString(forRegionCode: identifier) ?? "nil"
            region_names.append(name)
            var case_name:String = name
                .replacingOccurrences(of: "U.S.", with: "unitedStates")
                .replacingOccurrences(of: "St.", with: "saint")
                .replacingOccurrences(of: "So.", with: "south")
                .replacingOccurrences(of: "Isl.", with: "Islands")
                .replacingOccurrences(of: "(Keeling)", with: "")
                .replacingOccurrences(of: "&", with: "")
                .replacingOccurrences(of: "-", with: "")
                .replacingOccurrences(of: "'", with: "")
                .split(separator: "(")[0]
                .replacingOccurrences(of: " ", with: "")
            case_name = String(case_name[case_name.startIndex].lowercased() + case_name[case_name.index(after: case_name.startIndex)...])
            case_name = case_name.replacingOccurrences(of: "côtedIvoire", with: "côteDIvoire")
            region_cases.append(case_name)

            let containing_region_identifier:String? = region.containingRegion?.identifier
            if region_containing_regions[containing_region_identifier] == nil {
                region_containing_regions[containing_region_identifier] = []
            }
            region_containing_regions[containing_region_identifier]?.append(identifier)

            let region_continent_identifier:String? = region.continent?.identifier
            if region_continents[region_continent_identifier] == nil {
                region_continents[region_continent_identifier] = []
            }
            region_continents[region_continent_identifier]?.append(identifier)
        }
        for (index, identifier) in region_identifiers.enumerated() {
            print("case ." + region_names[index] + ":Locale.Region = Locale.Region.get(\"" + identifier + "\")")
        }*/
        /*for (key, value) in region_containing_regions {
            if let key:String = key {
                print("case \"" + value.joined(separator: "\", \"") + ": return Locale.Region(\"" + key + "\")")
            }
        }*/
        /*for (key, value) in region_continents {
            if let key:String = key {
                print("case \"" + value.joined(separator: "\", \"") + ": return Locale.Region(\"" + key + "\")")
            }
        }*/

        /*
        for country in Locale.Region.allCases {
            XCTAssertNotNil(country.subdivisionType, country.name())
        }*/
    }
    
    func test_foundations() {
        let unitedStates:Locale.Region = Locale.Region.unitedStates
        XCTAssert(SovereignStateSubdivisions.getAllMentioned("", options: []).isEmpty)
        XCTAssertNil(SovereignStateSubdivisions.valueOfCacheID(""))
        
        let minnesota:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        XCTAssertEqual(minnesota.rawValue, "minnesota")
        XCTAssertEqual(minnesota.cacheID, "US-minnesota")
        XCTAssertEqual(minnesota.country, unitedStates)
        XCTAssertEqual(SubdivisionsAfghanistanLevel1.badakhshan.region, Locale.Region.afghanistan)
        
        let test2:(any SovereignStateSubdivision)? = unitedStates.valueOfSubdivision("Minnesota", options: [])
        XCTAssert(minnesota.isEqual(test2))
    }
}

extension SwiftSovereignStateSubdivisionsLevel1Tests {
    func test() {
        let targetSubdivisions:[any Locale.Region.SubdivisionProtocol] = [SubdivisionsMexicoLevel1.bajaCalifornia, SubdivisionsUnitedStatesLevel1.california]
        let mentionedString:String = "Baja California; California!"
        let mentioned:[any SovereignStateSubdivision] = SovereignStateSubdivisions.getAllMentioned(mentionedString, options: [])
        let notFound:[any SovereignStateSubdivision] = targetSubdivisions.filter({ subdivision in
            return !mentioned.contains(where: { subdivision.isEqual($0) })
        })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testSubdivisionMentions;missing \(notFound.count);=[" + notFound.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        let notMentioned:[any SovereignStateSubdivision] = mentioned.filter({ subdivision in
            return !targetSubdivisions.contains(where: { subdivision.isEqual($0) })
        })
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testSubdivisionMentions;shouldn't be=[" + notMentioned.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        XCTAssertEqual(mentioned.count, targetSubdivisions.count)
        
        
        var subdivision:(any SovereignStateSubdivision)? = SubdivisionsUnitedStates.init("US-minnesota") // [LosslessStringConvertible]
        XCTAssertNotNil(subdivision)
        
        subdivision = SubdivisionsUnitedStates.init(rawValue: "minnesota") // [RawRepresentable]
        XCTAssertNotNil(subdivision)
        
        subdivision = Locale.Region.unitedStates.valueOfSubdivisionIdentifier("minnesota")
        XCTAssertNotNil(subdivision)
        
        subdivision = SovereignStateSubdivisions.valueOfCacheID("US-minnesota")
        XCTAssertNotNil(subdivision)
        
        var all:[any SovereignStateSubdivision] = SovereignStateSubdivisions.getAllMentioned("Minnesota", options: [])
        XCTAssertEqual(all.count, 1)
        
        all = SovereignStateSubdivisions.getAllMentioned("Minnesota! Baku? (Limburg) Buenos Aires's, Zabul.", options: [])
        XCTAssert(all.count >= 5)
    }
}

extension SwiftSovereignStateSubdivisionsLevel1Tests {
    func test_neighbors() {
        var foundAtLeastOneNeighbors:Bool = false
        outer : for country in Locale.Region.allCases {
            if let subdivisions:[any SovereignStateSubdivision] = country.subdivisions {
                for subdivision in subdivisions {
                    foundAtLeastOneNeighbors = !subdivision.neighbors.isEmpty
                    if foundAtLeastOneNeighbors {
                        break outer
                    }
                }
            }
        }
        XCTAssert(foundAtLeastOneNeighbors)
    }
    
    func test_wikipedia_urls() {
        var failedSubdivisions:[any SovereignStateSubdivision] = []
        for country in Locale.Region.allCases {
            if let subdivisions:[any SovereignStateSubdivision] = country.subdivisions {
                for subdivision in subdivisions {
                    let subdivisionWikipediaURL:String = subdivision.wikipediaURL
                    if subdivisionWikipediaURL.contains(" ") {
                        failedSubdivisions.append(subdivision)
                    }
                }
            }
        }
        
        if failedSubdivisions.count > 0 {
            print("SwiftSovereignStatesTests;testWikipediaURLs;failedSubdivisions=\(failedSubdivisions.count)")
            for subdivision in failedSubdivisions {
                let country:Locale.Region = subdivision.country
                print("SwiftSovereignStateSubdivisionsLevel1Tests;testWikipediaURLs;failedSubdivisions;" + country.identifier + ";" + subdivision.rawValue + ";wikipediaURL=" + subdivision.wikipediaURL)
            }
        }
        XCTAssertEqual(failedSubdivisions.count, 0)
    }
}

extension SwiftSovereignStateSubdivisionsLevel1Tests {
    func test_localization() {
        let supported_language_codes:[String] = ["en"]
        for language in supported_language_codes {
            for subdivision in SovereignStateSubdivisions.all {
                let string:String = subdivision.name
                XCTAssert(!string.hasSuffix("_name_short"), "language=" + language + ";subdivision=" + subdivision.cacheID)
            }
        }
    }
    
    func test_flag_url() {
        for subdivision in SovereignStateSubdivisions.all {
            XCTAssertNotNil(subdivision.flagURL, subdivision.cacheID)
        }
    }
    
    func test_locale_region() {
        print("regions=\(Locale.Region.isoRegions)")
    }
}
