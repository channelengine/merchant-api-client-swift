//
// SettingsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SettingsResponse: Codable, Hashable {

    public var shipment: ShipmentSettingsResponse?
    public var advanced: AdvanceSettingsResponse?

    public init(shipment: ShipmentSettingsResponse? = nil, advanced: AdvanceSettingsResponse? = nil) {
        self.shipment = shipment
        self.advanced = advanced
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case shipment = "Shipment"
        case advanced = "Advanced"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(shipment, forKey: .shipment)
        try container.encodeIfPresent(advanced, forKey: .advanced)
    }



}