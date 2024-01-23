//
//  SovereignStateSubdivisionWrapper.swift
//
//
//  Created by Evan Anderson on 1/22/24.
//

import Foundation
import SwiftSovereignStates

public struct SovereignStateSubdivisionWrapper : SovereignStateSubdivision, SovereignRegionWrapper {
    public var rawValue:String
    
    public let subdivision:any SovereignStateSubdivision
    
    public init(_ subdivision: any SovereignStateSubdivision) {
        self.subdivision = subdivision
        rawValue = subdivision.rawValue
    }
    public init?(_ description: String) {
        guard let subdivision:any SovereignStateSubdivision = SovereignStateSubdivisions.valueOfCacheID(description) else { return nil }
        self = subdivision.wrapped()
        rawValue = subdivision.rawValue
    }
    public init?(rawValue: String) {
        guard let subdivision:any SovereignStateSubdivision = SovereignStateSubdivisions.valueOfCacheID(rawValue) else { return nil }
        self = subdivision.wrapped()
        self.rawValue = rawValue
    }
    
    public init(from decoder: Decoder) throws {
        let container:SingleValueDecodingContainer = try decoder.singleValueContainer()
        let identifier:String = try container.decode(String.self)
        subdivision = SovereignStateSubdivisions.valueOfCacheID(identifier) ?? SubdivisionsUnitedStates.minnesota
        rawValue = subdivision.rawValue
    }
    
    public var cacheID : String {
        return subdivision.cacheID
    }
    public var keywords : Set<String> {
        return subdivision.keywords
    }
    public var additionalKeywords : Set<String>? {
        return subdivision.additionalKeywords
    }
    public func isMentioned(in string: String, options: String.CompareOptions) -> Bool {
        return subdivision.isMentioned(in: string, options: options)
    }
    
    public var name : String {
        return subdivision.name
    }
    public var wikipediaName : String? {
        return subdivision.wikipediaName
    }
    public var officialNames : Set<String>? {
        return subdivision.officialNames
    }
    public var aliases : Set<String>? {
        return subdivision.aliases
    }
    
    public var governmentURL : String? {
        return subdivision.governmentURL
    }
    
    public var flagURL : String? {
        return subdivision.flagURL
    }
    public var wikipediaFlagURLSvgID : String? {
        return subdivision.wikipediaFlagURLSvgID
    }
    public var wikipediaURL : String {
        return subdivision.wikipediaURL
    }
    public var wikipediaURLPrefix : String? {
        return subdivision.wikipediaURLPrefix
    }
    public var wikipediaURLSuffix : String? {
        return subdivision.wikipediaURLSuffix
    }
    
    public var timeZones : [SovereignStateTimeZone]? {
        return subdivision.timeZones
    }
    public var temperateZones : [TemperateZone]? {
        return subdivision.temperateZones
    }
    
    public var isoAlpha2 : String? {
        return subdivision.isoAlpha2
    }
    public var isoAlpha3 : String? {
        return subdivision.isoAlpha3
    }
    
    public var country : Locale.Region {
        return subdivision.country
    }
    public var type : SovereignStateSubdivisionType {
        return subdivision.type
    }
    public var type_suffix : String {
        return subdivision.type_suffix
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        return subdivision.neighbors
    }
}
