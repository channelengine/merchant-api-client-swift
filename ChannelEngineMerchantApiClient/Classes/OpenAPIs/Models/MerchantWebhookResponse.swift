//
// MerchantWebhookResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantWebhookResponse: Codable, Hashable {

    public var name: String?
    public var url: String?
    public var isActive: Bool?
    public var events: [WebhookEventType]?

    public init(name: String? = nil, url: String? = nil, isActive: Bool? = nil, events: [WebhookEventType]? = nil) {
        self.name = name
        self.url = url
        self.isActive = isActive
        self.events = events
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case url = "Url"
        case isActive = "IsActive"
        case events = "Events"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(isActive, forKey: .isActive)
        try container.encodeIfPresent(events, forKey: .events)
    }
}

