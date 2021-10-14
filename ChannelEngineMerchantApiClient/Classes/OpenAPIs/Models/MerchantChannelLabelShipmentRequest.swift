//
// MerchantChannelLabelShipmentRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct MerchantChannelLabelShipmentRequest: Codable, Hashable {

    public var dimensions: MerchantShipmentPackageDimensionsRequest
    public var weight: MerchantShipmentPackageWeightRequest
    public var channelMethodCode: String
    /** The unique shipment reference used by the Merchant. */
    public var merchantShipmentNo: String
    /** The unique order reference used by the Merchant. */
    public var merchantOrderNo: String
    /** The code of the country from where the package is being shipped. */
    public var shippedFromCountryCode: String?
    public var lines: [MerchantShipmentLineRequest]

    public init(dimensions: MerchantShipmentPackageDimensionsRequest, weight: MerchantShipmentPackageWeightRequest, channelMethodCode: String, merchantShipmentNo: String, merchantOrderNo: String, shippedFromCountryCode: String? = nil, lines: [MerchantShipmentLineRequest]) {
        self.dimensions = dimensions
        self.weight = weight
        self.channelMethodCode = channelMethodCode
        self.merchantShipmentNo = merchantShipmentNo
        self.merchantOrderNo = merchantOrderNo
        self.shippedFromCountryCode = shippedFromCountryCode
        self.lines = lines
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dimensions = "Dimensions"
        case weight = "Weight"
        case channelMethodCode = "ChannelMethodCode"
        case merchantShipmentNo = "MerchantShipmentNo"
        case merchantOrderNo = "MerchantOrderNo"
        case shippedFromCountryCode = "ShippedFromCountryCode"
        case lines = "Lines"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(dimensions, forKey: .dimensions)
        try container.encode(weight, forKey: .weight)
        try container.encode(channelMethodCode, forKey: .channelMethodCode)
        try container.encode(merchantShipmentNo, forKey: .merchantShipmentNo)
        try container.encode(merchantOrderNo, forKey: .merchantOrderNo)
        try container.encodeIfPresent(shippedFromCountryCode, forKey: .shippedFromCountryCode)
        try container.encode(lines, forKey: .lines)
    }



}
