//
// MerchantStockLocationUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantStockLocationUpdateRequest: Codable, Hashable {

    /** The stock of the product. Should not be negative. */
    public var stock: Int?
    /** The stock location id of updated stok.  If not provided stock from default stock location will be updated. */
    public var stockLocationId: Int?

    public init(stock: Int? = nil, stockLocationId: Int? = nil) {
        self.stock = stock
        self.stockLocationId = stockLocationId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case stock = "Stock"
        case stockLocationId = "StockLocationId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(stock, forKey: .stock)
        try container.encodeIfPresent(stockLocationId, forKey: .stockLocationId)
    }
}
