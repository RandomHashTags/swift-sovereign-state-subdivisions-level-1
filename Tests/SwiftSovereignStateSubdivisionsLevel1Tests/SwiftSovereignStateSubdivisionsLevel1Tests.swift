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
    func testExample() throws {
    }
    
    func test_foundations() {
        let unitedStates:Locale.Region = Locale.Region.unitedStates
        XCTAssert(SovereignStateSubdivisions.getAllMentioned("", options: []).isEmpty)
        XCTAssert(SovereignStateSubdivisions.valueOfCacheID("") == nil)
        
        let minnesota:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        XCTAssertEqual(minnesota.rawValue, "minnesota")
        XCTAssertEqual(minnesota.cacheID, "US-minnesota")
        XCTAssertEqual(minnesota.country, unitedStates)
        XCTAssertEqual(SubdivisionsAfghanistan.badakhshan.country, Locale.Region.afghanistan)
        
        let test2:(any SovereignStateSubdivision)? = unitedStates.valueOfSubdivision("Minnesota", options: [])
        XCTAssert(minnesota.isEqual(test2))
    }
}

extension SwiftSovereignStateSubdivisionsLevel1Tests {
    func test() {
        let targetSubdivisions:[any SovereignStateSubdivision] = [SubdivisionsMexico.baja_california, SubdivisionsUnitedStates.california]
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
        XCTAssert(subdivision != nil)
        
        subdivision = SubdivisionsUnitedStates.init(rawValue: "minnesota") // [RawRepresentable]
        XCTAssert(subdivision != nil)
        
        subdivision = Locale.Region.unitedStates.valueOfSubdivisionIdentifier("minnesota")
        XCTAssert(subdivision != nil)
        
        subdivision = SovereignStateSubdivisions.valueOfCacheID("US-minnesota")
        XCTAssert(subdivision != nil)
        
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
            var missing:[String] = []
            
            for subdivision in SovereignStateSubdivisions.all {
                let string:String = subdivision.name
                if string.elementsEqual("nil") {
                    missing.append(subdivision.cacheID)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) level-1 subdivision names for " + missing.description)
            missing.removeAll()
            
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_subdivision_type_name_singular(type)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) subdivision_types_name_singular for " + missing.description)
            missing.removeAll()
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_subdivision_type_name_plural(type)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) subdivision_types_name_plural for " + missing.description)
            missing.removeAll()
        }
    }
}
