//
// MerchantReturnRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantReturnRequest: Codable, Hashable {

    /** The unique order reference used by the Merchant (sku). */
    public var merchantOrderNo: String
    /** The unique return reference used by the Merchant (sku). */
    public var merchantReturnNo: String
    public var lines: [MerchantReturnLineRequest]
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

    public init(merchantOrderNo: String, merchantReturnNo: String, lines: [MerchantReturnLineRequest], id: Int? = nil, reason: ReturnReason? = nil, customerComment: String? = nil, merchantComment: String? = nil, refundInclVat: Double? = nil, refundExclVat: Double? = nil, returnDate: Date? = nil) {
        self.merchantOrderNo = merchantOrderNo
        self.merchantReturnNo = merchantReturnNo
        self.lines = lines
        self.id = id
        self.reason = reason
        self.customerComment = customerComment
        self.merchantComment = merchantComment
        self.refundInclVat = refundInclVat
        self.refundExclVat = refundExclVat
        self.returnDate = returnDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchantOrderNo = "MerchantOrderNo"
        case merchantReturnNo = "MerchantReturnNo"
        case lines = "Lines"
        case id = "Id"
        case reason = "Reason"
        case customerComment = "CustomerComment"
        case merchantComment = "MerchantComment"
        case refundInclVat = "RefundInclVat"
        case refundExclVat = "RefundExclVat"
        case returnDate = "ReturnDate"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(merchantOrderNo, forKey: .merchantOrderNo)
        try container.encode(merchantReturnNo, forKey: .merchantReturnNo)
        try container.encode(lines, forKey: .lines)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(customerComment, forKey: .customerComment)
        try container.encodeIfPresent(merchantComment, forKey: .merchantComment)
        try container.encodeIfPresent(refundInclVat, forKey: .refundInclVat)
        try container.encodeIfPresent(refundExclVat, forKey: .refundExclVat)
        try container.encodeIfPresent(returnDate, forKey: .returnDate)
    }
}

