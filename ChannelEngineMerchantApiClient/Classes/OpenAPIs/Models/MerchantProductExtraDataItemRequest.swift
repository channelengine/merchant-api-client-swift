//
// MerchantProductExtraDataItemRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantProductExtraDataItemRequest: Codable, Hashable {

    /** Name of the extra data field. */
    public var key: String
    /** Value of the extra data field. */
    public var value: String?
    public var type: ExtraDataType?
    /** Add this field to the export of the product feed to the channel. */
    public var isPublic: Bool?

    public init(key: String, value: String? = nil, type: ExtraDataType? = nil, isPublic: Bool? = nil) {
        self.key = key
        self.value = value
        self.type = type
        self.isPublic = isPublic
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key = "Key"
        case value = "Value"
        case type = "Type"
        case isPublic = "IsPublic"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(key, forKey: .key)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
    }
}

