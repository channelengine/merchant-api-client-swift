//
// VatSettingsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VatSettingsResponse: Codable, Hashable {

    public var countryIso: String?
    public var no: String?
    public var standardRate: Double?
    public var reducedRate: Double?
    public var superReducedRate: Double?

    public init(countryIso: String? = nil, no: String? = nil, standardRate: Double? = nil, reducedRate: Double? = nil, superReducedRate: Double? = nil) {
        self.countryIso = countryIso
        self.no = no
        self.standardRate = standardRate
        self.reducedRate = reducedRate
        self.superReducedRate = superReducedRate
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case countryIso = "CountryIso"
        case no = "No"
        case standardRate = "StandardRate"
        case reducedRate = "ReducedRate"
        case superReducedRate = "SuperReducedRate"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(countryIso, forKey: .countryIso)
        try container.encodeIfPresent(no, forKey: .no)
        try container.encodeIfPresent(standardRate, forKey: .standardRate)
        try container.encodeIfPresent(reducedRate, forKey: .reducedRate)
        try container.encodeIfPresent(superReducedRate, forKey: .superReducedRate)
    }



}