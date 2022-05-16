//
// ChannelListedProductResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChannelListedProductResponse: Codable, Hashable {

    public var channelStatus: ListedProductChannelStatus?
    /** EAN */
    public var ean: String?
    public var exportStatus: ListedProductExportStatus?
    /** Your product number (SKU) */
    public var merchantProductNo: String?
    /** Your product last exported price */
    public var lastExportedPrice: Double?
    /** Your product last exported stock */
    public var lastExportedStock: Int?

    public init(channelStatus: ListedProductChannelStatus? = nil, ean: String? = nil, exportStatus: ListedProductExportStatus? = nil, merchantProductNo: String? = nil, lastExportedPrice: Double? = nil, lastExportedStock: Int? = nil) {
        self.channelStatus = channelStatus
        self.ean = ean
        self.exportStatus = exportStatus
        self.merchantProductNo = merchantProductNo
        self.lastExportedPrice = lastExportedPrice
        self.lastExportedStock = lastExportedStock
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case channelStatus = "ChannelStatus"
        case ean = "Ean"
        case exportStatus = "ExportStatus"
        case merchantProductNo = "MerchantProductNo"
        case lastExportedPrice = "LastExportedPrice"
        case lastExportedStock = "LastExportedStock"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(channelStatus, forKey: .channelStatus)
        try container.encodeIfPresent(ean, forKey: .ean)
        try container.encodeIfPresent(exportStatus, forKey: .exportStatus)
        try container.encodeIfPresent(merchantProductNo, forKey: .merchantProductNo)
        try container.encodeIfPresent(lastExportedPrice, forKey: .lastExportedPrice)
        try container.encodeIfPresent(lastExportedStock, forKey: .lastExportedStock)
    }
}

