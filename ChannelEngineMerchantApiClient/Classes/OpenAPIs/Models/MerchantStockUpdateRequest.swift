//
// MerchantStockUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct MerchantStockUpdateRequest: Codable { 


    /** The unique product reference used by the Merchant (sku). */
    public var merchantProductNo: String
    /** The stock of the product. Should not be negative. */
    public var stock: Int?
    /** The stock location id of updated stok.  If not provided stock from default stock location will be updated. */
    public var stockLocationId: Int?

    public init(merchantProductNo: String, stock: Int? = nil, stockLocationId: Int? = nil) {
        self.merchantProductNo = merchantProductNo
        self.stock = stock
        self.stockLocationId = stockLocationId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case merchantProductNo = "MerchantProductNo"
        case stock = "Stock"
        case stockLocationId = "StockLocationId"
    }

}
