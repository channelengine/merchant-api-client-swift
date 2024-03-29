//
// MerchantOfferGetStockResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantOfferGetStockResponse: Codable, Hashable {

    /** The product SKU. */
    public var merchantProductNo: String?
    /** The ChannelEngine id of the stock location. */
    public var stockLocationId: Int?
    /** The quantity of products in stock at the stock location. */
    public var stock: Int?
    /** The timestamp of the last stock update for the stock location. */
    public var updatedAt: Date?

    public init(merchantProductNo: String? = nil, stockLocationId: Int? = nil, stock: Int? = nil, updatedAt: Date? = nil) {
        self.merchantProductNo = merchantProductNo
        self.stockLocationId = stockLocationId
        self.stock = stock
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchantProductNo = "MerchantProductNo"
        case stockLocationId = "StockLocationId"
        case stock = "Stock"
        case updatedAt = "UpdatedAt"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(merchantProductNo, forKey: .merchantProductNo)
        try container.encodeIfPresent(stockLocationId, forKey: .stockLocationId)
        try container.encodeIfPresent(stock, forKey: .stock)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

