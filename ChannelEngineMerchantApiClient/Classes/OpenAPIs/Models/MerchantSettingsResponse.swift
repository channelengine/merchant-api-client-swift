//
// MerchantSettingsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct MerchantSettingsResponse: Codable, Hashable {

    public var name: String?
    public var companyName: String?
    public var currencyCode: String?
    public var defaultCultureCode: String?
    public var settings: SettingsResponse?
    public var vat: [VatSettingsResponse]?

    public init(name: String? = nil, companyName: String? = nil, currencyCode: String? = nil, defaultCultureCode: String? = nil, settings: SettingsResponse? = nil, vat: [VatSettingsResponse]? = nil) {
        self.name = name
        self.companyName = companyName
        self.currencyCode = currencyCode
        self.defaultCultureCode = defaultCultureCode
        self.settings = settings
        self.vat = vat
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case companyName = "CompanyName"
        case currencyCode = "CurrencyCode"
        case defaultCultureCode = "DefaultCultureCode"
        case settings = "Settings"
        case vat = "Vat"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(companyName, forKey: .companyName)
        try container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(defaultCultureCode, forKey: .defaultCultureCode)
        try container.encodeIfPresent(settings, forKey: .settings)
        try container.encodeIfPresent(vat, forKey: .vat)
    }



}