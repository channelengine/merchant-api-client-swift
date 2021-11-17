//
// CollectionOfMerchantShipmentLabelCarrierResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct CollectionOfMerchantShipmentLabelCarrierResponse: Codable, Hashable {

    public var content: [MerchantShipmentLabelCarrierResponse]?
    public var count: Int?
    public var totalCount: Int?
    public var itemsPerPage: Int?
    public var statusCode: Int?
    public var logId: Int?
    public var success: Bool?
    public var message: String?
    public var validationErrors: [String: [String]]?

    public init(content: [MerchantShipmentLabelCarrierResponse]? = nil, count: Int? = nil, totalCount: Int? = nil, itemsPerPage: Int? = nil, statusCode: Int? = nil, logId: Int? = nil, success: Bool? = nil, message: String? = nil, validationErrors: [String: [String]]? = nil) {
        self.content = content
        self.count = count
        self.totalCount = totalCount
        self.itemsPerPage = itemsPerPage
        self.statusCode = statusCode
        self.logId = logId
        self.success = success
        self.message = message
        self.validationErrors = validationErrors
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content = "Content"
        case count = "Count"
        case totalCount = "TotalCount"
        case itemsPerPage = "ItemsPerPage"
        case statusCode = "StatusCode"
        case logId = "LogId"
        case success = "Success"
        case message = "Message"
        case validationErrors = "ValidationErrors"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(itemsPerPage, forKey: .itemsPerPage)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
        try container.encodeIfPresent(logId, forKey: .logId)
        try container.encodeIfPresent(success, forKey: .success)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(validationErrors, forKey: .validationErrors)
    }



}
