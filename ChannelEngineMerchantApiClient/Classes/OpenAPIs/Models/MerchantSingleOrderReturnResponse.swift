//
// MerchantSingleOrderReturnResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantSingleOrderReturnResponse: Codable, Hashable {

    /** The unique order reference used by the Merchant. */
    public var merchantOrderNo: String?
    public var lines: [MerchantSingleOrderReturnLineResponse]?
    /** The date at which the return was created in ChannelEngine. */
    public var createdAt: Date?
    /** The date at which the return was last modified in ChannelEngine. */
    public var updatedAt: Date?
    /** The unique return reference used by the Merchant, will be empty in case of a channel or unacknowledged return. */
    public var merchantReturnNo: String?
    /** The unique return reference used by the Channel, will be empty in case of a merchant return. */
    public var channelReturnNo: String?
    /** The id of the channel. */
    public var channelId: Int?
    /** The id of the Global Channel. */
    public var globalChannelId: Int?
    /** The name of the Global Channel. */
    public var globalChannelName: String?
    public var status: ReturnStatus?
    /** The unique return reference used by ChannelEngine. */
    public var id: Int?
    public var reason: ReturnReason?
    /** Optional. Comment of customer on the (reason of) the return. */
    public var customerComment: String?
    /** Optional. Comment of merchant on the return. */
    public var merchantComment: String?
    /** Refund amount incl. VAT. */
    public var refundInclVat: Double?
    /** Refund amount excl. VAT. */
    public var refundExclVat: Double?
    /** The date at which the return was originally created in the source system (if available). */
    public var returnDate: Date?
    /** Extra data on the return. Each item must have an unqiue key */
    public var extraData: [String: String]?

    public init(merchantOrderNo: String? = nil, lines: [MerchantSingleOrderReturnLineResponse]? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, merchantReturnNo: String? = nil, channelReturnNo: String? = nil, channelId: Int? = nil, globalChannelId: Int? = nil, globalChannelName: String? = nil, status: ReturnStatus? = nil, id: Int? = nil, reason: ReturnReason? = nil, customerComment: String? = nil, merchantComment: String? = nil, refundInclVat: Double? = nil, refundExclVat: Double? = nil, returnDate: Date? = nil, extraData: [String: String]? = nil) {
        self.merchantOrderNo = merchantOrderNo
        self.lines = lines
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.merchantReturnNo = merchantReturnNo
        self.channelReturnNo = channelReturnNo
        self.channelId = channelId
        self.globalChannelId = globalChannelId
        self.globalChannelName = globalChannelName
        self.status = status
        self.id = id
        self.reason = reason
        self.customerComment = customerComment
        self.merchantComment = merchantComment
        self.refundInclVat = refundInclVat
        self.refundExclVat = refundExclVat
        self.returnDate = returnDate
        self.extraData = extraData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchantOrderNo = "MerchantOrderNo"
        case lines = "Lines"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case merchantReturnNo = "MerchantReturnNo"
        case channelReturnNo = "ChannelReturnNo"
        case channelId = "ChannelId"
        case globalChannelId = "GlobalChannelId"
        case globalChannelName = "GlobalChannelName"
        case status = "Status"
        case id = "Id"
        case reason = "Reason"
        case customerComment = "CustomerComment"
        case merchantComment = "MerchantComment"
        case refundInclVat = "RefundInclVat"
        case refundExclVat = "RefundExclVat"
        case returnDate = "ReturnDate"
        case extraData = "ExtraData"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(merchantOrderNo, forKey: .merchantOrderNo)
        try container.encodeIfPresent(lines, forKey: .lines)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(merchantReturnNo, forKey: .merchantReturnNo)
        try container.encodeIfPresent(channelReturnNo, forKey: .channelReturnNo)
        try container.encodeIfPresent(channelId, forKey: .channelId)
        try container.encodeIfPresent(globalChannelId, forKey: .globalChannelId)
        try container.encodeIfPresent(globalChannelName, forKey: .globalChannelName)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(customerComment, forKey: .customerComment)
        try container.encodeIfPresent(merchantComment, forKey: .merchantComment)
        try container.encodeIfPresent(refundInclVat, forKey: .refundInclVat)
        try container.encodeIfPresent(refundExclVat, forKey: .refundExclVat)
        try container.encodeIfPresent(returnDate, forKey: .returnDate)
        try container.encodeIfPresent(extraData, forKey: .extraData)
    }
}

