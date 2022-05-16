//
// FulfillmentType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum FulfillmentType: String, Codable, CaseIterable {
    case all = "ALL"
    case onlyMerchant = "ONLY_MERCHANT"
    case onlyChannel = "ONLY_CHANNEL"
    case mixed = "MIXED"
    case includesMerchant = "INCLUDES_MERCHANT"
}
