//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation
import SwiftSovereignStates

public enum SovereignStateSubdivisions {
    public static let all:[any SovereignStateSubdivision] = Locale.Region.allCases.compactMap({ $0.subdivisions }).flatMap({ $0 })
    
    public static func getAllMentioned(_ string: String, options: String.CompareOptions) -> [any SovereignStateSubdivision] {
        let string:String = string.folding(options: options, locale: nil)
        let start_index:String.Index = string.startIndex
        let end_index:String.Index = string.endIndex
        return all.filter({ SovereignRegions.doesSatisfy(string: string, start_index: start_index, end_index: end_index, values: $0.keywords.map_set({ $0.folding(options: options, locale: nil) })) })
    }
    public static func getAllMentioned(_ string: String, country: Locale.Region, options: String.CompareOptions) -> [any SovereignStateSubdivision] {
        guard var subdivisions:[any SovereignStateSubdivision] = country.subdivisions else { return [] }
        let string:String = string.folding(options: options, locale: nil)
        let start_index:String.Index = string.startIndex, end_index:String.Index = string.endIndex
        subdivisions = subdivisions.filter({ SovereignRegions.doesSatisfy(string: string, start_index: start_index, end_index: end_index, values: $0.keywords.map_set({ $0.folding(options: options, locale: nil) })) })
        return subdivisions
    }
    
    public static func valueOfCacheID(_ cacheID: String) -> (any SovereignStateSubdivision)? {
        let components:[Substring] = cacheID.split(separator: "-")
        guard components.count == 2, let subdivision:any SovereignStateSubdivision = Locale.Region.init(String(components[0])).subdivisionType?.init(rawValue: String(components[1])) else { return nil }
        return subdivision
    }
}

public extension Locale.Region {
    func valueOfSubdivision(_ string: String?, options: String.CompareOptions) -> (any SovereignStateSubdivision)? {
        guard let string:String = string else { return nil }
        return SovereignStateSubdivisions.getAllMentioned(string, country: self, options: options).first
    }
    func valueOfSubdivisionIdentifier(_ string: String) -> (any SovereignStateSubdivision)? {
        return subdivisionType?.init(rawValue: string)
    }
}

public extension SovereignStateSubdivision {
    init?(_ description: String) {
        guard let subdivision:any SovereignStateSubdivision = SovereignStateSubdivisions.valueOfCacheID(description), subdivision is Self else { return nil }
        self = subdivision as! Self
    }
    
    var name : String {
        let table:String = "Subdivisions1\(country.name(forLocale: Locale.init(identifier: "en")).replacingOccurrences(of: " ", with: ""))"
        let key:String.LocalizationValue = String.LocalizationValue(stringLiteral: rawValue + "_name_short")
        return String(localized: key, table: table, bundle: Bundle.module)
    }
}
