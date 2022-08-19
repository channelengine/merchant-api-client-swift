//
// MerchantSingleOrderReturnLineResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantSingleOrderReturnLineResponse: Codable, Hashable {

    /** The unique product reference used by the Merchant (sku). */
    public var merchantProductNo: String?
    /** The accepted quantity of returned products in this orderline. */
    public var acceptedQuantity: Int?
    /** The rejected quantity of returned products in this orderline. */
    public var rejectedQuantity: Int?
    public var orderLine: MerchantOrderLineResponse?
    public var shipmentStatus: ShipmentLineStatus?
    /** Number of items of the product in this return. */
    public var quantity: Int
    /** Extra data on the returnline. Each item must have an unqiue key */
    public var extraData: [String: String]?

    public init(merchantProductNo: String? = nil, acceptedQuantity: Int? = nil, rejectedQuantity: Int? = nil, orderLine: MerchantOrderLineResponse? = nil, shipmentStatus: ShipmentLineStatus? = nil, quantity: Int, extraData: [String: String]? = nil) {
        self.merchantProductNo = merchantProductNo
        self.acceptedQuantity = acceptedQuantity
        self.rejectedQuantity = rejectedQuantity
        self.orderLine = orderLine
        self.shipmentStatus = shipmentStatus
        self.quantity = quantity
        self.extraData = extraData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchantProductNo = "MerchantProductNo"
        case acceptedQuantity = "AcceptedQuantity"
        case rejectedQuantity = "RejectedQuantity"
        case orderLine = "OrderLine"
        case shipmentStatus = "ShipmentStatus"
        case quantity = "Quantity"
        case extraData = "ExtraData"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(merchantProductNo, forKey: .merchantProductNo)
        try container.encodeIfPresent(acceptedQuantity, forKey: .acceptedQuantity)
        try container.encodeIfPresent(rejectedQuantity, forKey: .rejectedQuantity)
        try container.encodeIfPresent(orderLine, forKey: .orderLine)
        try container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
        try container.encode(quantity, forKey: .quantity)
        try container.encodeIfPresent(extraData, forKey: .extraData)
    }
}

