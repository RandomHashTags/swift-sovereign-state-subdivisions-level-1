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

public protocol SovereignStateSubdivision : SovereignState { // https://en.wikipedia.org/wiki/List_of_first-level_administrative_divisions_by_country
    /// The country this subdivision's administrative borders are claimed by.
    var country : Locale.Region { get }
    var type : SovereignStateSubdivisionType { get }
    var type_suffix : String { get }
    
    /// The neighboring subdivisions, in relation the its administrative borders.
    var neighbors : [any SovereignStateSubdivision] { get }
    
    /*
    /// The level-2 administrative units' type this subdivision contains.
    var countiesType : (any SovereignStateLevel2Division.Type)? { get }
    /// The level-2 administrative units this subdivision contains.
    var counties : [any SovereignStateLevel2Division]? { get }
    
    /// The level-3 administrative units' type this subdivision contains.
    var citiesType : (any SovereignStateCity.Type)? { get }
    /// The level-3 administrative units this subdivision contains.
    var cities : [any SovereignStateCity]? { get }
     */
}

public extension SovereignStateSubdivision {
    init?(_ description: String) {
        guard let subdivision:any SovereignStateSubdivision = SovereignStateSubdivisions.valueOfCacheID(description), subdivision is Self else { return nil }
        self = subdivision as! Self
    }
    
    var cacheID : String {
        return country.identifier + "-" + rawValue
    }
    
    var name : String {
        let table:String = "Subdivisions1\(country.name(forLocale: Locale.init(identifier: "en")).replacingOccurrences(of: " ", with: ""))"
        let key:String.LocalizationValue = String.LocalizationValue(stringLiteral: rawValue + "_name_short")
        return String(localized: key, table: table, bundle: Bundle.module)
    }
    
    var isoAlpha2 : String? {
        return nil
    }
    var isoAlpha3 : String? {
        return nil
    }
    var currencies : [Currency] {
        return [] // TODO: fix
    }
    
    var wikipediaURLSuffix : String? {
        return "_" + type_suffix
    }
    var type_suffix : String {
        return type.name_singular.replacingOccurrences(of: " ", with: "_")
    }
    
    var neighbors : [any SovereignStateSubdivision] {
        return []
    }
    
    /*var countiesType : (any SovereignStateLevel2Division.Type)? {
        return nil
    }
    var counties : [any SovereignStateLevel2Division]? {
        return countiesType?.allCases as? [any SovereignStateLevel2Division]
    }
    
    var citiesType : (any SovereignStateCity.Type)? {
        return nil
    }
    var cities : [any SovereignStateCity]? {
        return citiesType?.allCases as? [any SovereignStateCity]
    }
     */
    
    func wrapped() -> SovereignStateSubdivisionWrapper {
        return SovereignStateSubdivisionWrapper(self)
    }
}

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
    
    /*
    public var countiesType : (any SovereignStateLevel2Division.Type)? {
        return subdivision.countiesType
    }
    
    public var citiesType : (any SovereignStateCity.Type)? {
        return subdivision.citiesType
    }
     */
}