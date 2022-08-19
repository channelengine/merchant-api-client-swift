//
// MerchantOrderResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantOrderResponse: Codable, Hashable {

    /** The unique identifier used by ChannelEngine. This identifier does  not have to be saved. It should only be used in a call to acknowledge the order. */
    public var id: Int?
    /** The name of the channel for this specific environment/account. */
    public var channelName: String?
    /** The unique ID of the channel for this specific environment/account. */
    public var channelId: Int?
    /** The name of the channel across all of ChannelEngine. */
    public var globalChannelName: String?
    /** The unique ID of the channel across all of ChannelEngine. */
    public var globalChannelId: Int?
    public var channelOrderSupport: OrderSupport?
    /** The order reference used by the channel.  This number is not guaranteed to be unique accross all orders,  because different channels can use the same order number format. */
    public var channelOrderNo: String?
    /** The unique order reference used by the Merchant */
    public var merchantOrderNo: String?
    public var status: OrderStatusView?
    /** Indicating whether the order is a business order. */
    public var isBusinessOrder: Bool?
    /** The date the order was acknowledged in ChannelEngine. */
    public var acknowledgedDate: Date?
    /** The date the order was created in ChannelEngine. */
    public var createdAt: Date?
    /** The date the order was last updated in ChannelEngine. */
    public var updatedAt: Date?
    /** The optional comment a merchant can add to an order. */
    public var merchantComment: String?
    public var billingAddress: MerchantAddressResponse?
    public var shippingAddress: MerchantAddressResponse?
    /** The total value of the order lines including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering). */
    public var subTotalInclVat: Double?
    /** The total amount of VAT charged over the order lines  (in the shop's base currency calculated using the exchange rate at the time of ordering). */
    public var subTotalVat: Double?
    /** The total amount of VAT charged over the shipping fee  (in the shop's base currency calculated using the exchange rate at the time of ordering). */
    public var shippingCostsVat: Double?
    /** The total value of the order including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering). */
    public var totalInclVat: Double?
    /** The total amount of VAT charged over the total value of te order  (in the shop's base currency calculated using the exchange rate at the time of ordering). */
    public var totalVat: Double?
    /** The total value of the order lines including VAT  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalSubTotalInclVat: Double?
    /** The total amount of VAT charged over the order lines  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalSubTotalVat: Double?
    /** The shipping fee including VAT  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalShippingCostsInclVat: Double?
    /** The total amount of VAT charged over the shipping fee  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalShippingCostsVat: Double?
    /** The total value of the order including VAT  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalTotalInclVat: Double?
    /** The total amount of VAT charged over the total value of te order  (in the currency in which the order was paid for, see CurrencyCode). */
    public var originalTotalVat: Double?
    public var lines: [MerchantOrderLineResponse]?
    public var shippingCostsInclVat: Double?
    /** The customer's telephone number. */
    public var phone: String?
    /** The customer's email. */
    public var email: String
    /** Optional. A company's chamber of commerce number. */
    public var companyRegistrationNo: String?
    /** Optional. A company's VAT number. */
    public var vatNo: String?
    /** The payment method used on the order. */
    public var paymentMethod: String?
    /** Reference or transaction id for the payment */
    public var paymentReferenceNo: String?
    /** The currency code for the amounts of the order. */
    public var currencyCode: String
    /** The date the order was created at the channel. */
    public var orderDate: Date
    /** The unique customer reference used by the channel. */
    public var channelCustomerNo: String?
    /** Extra data on the order. */
    public var extraData: [String: String]?

    public init(id: Int? = nil, channelName: String? = nil, channelId: Int? = nil, globalChannelName: String? = nil, globalChannelId: Int? = nil, channelOrderSupport: OrderSupport? = nil, channelOrderNo: String? = nil, merchantOrderNo: String? = nil, status: OrderStatusView? = nil, isBusinessOrder: Bool? = nil, acknowledgedDate: Date? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, merchantComment: String? = nil, billingAddress: MerchantAddressResponse? = nil, shippingAddress: MerchantAddressResponse? = nil, subTotalInclVat: Double? = nil, subTotalVat: Double? = nil, shippingCostsVat: Double? = nil, totalInclVat: Double? = nil, totalVat: Double? = nil, originalSubTotalInclVat: Double? = nil, originalSubTotalVat: Double? = nil, originalShippingCostsInclVat: Double? = nil, originalShippingCostsVat: Double? = nil, originalTotalInclVat: Double? = nil, originalTotalVat: Double? = nil, lines: [MerchantOrderLineResponse]? = nil, shippingCostsInclVat: Double? = nil, phone: String? = nil, email: String, companyRegistrationNo: String? = nil, vatNo: String? = nil, paymentMethod: String? = nil, paymentReferenceNo: String? = nil, currencyCode: String, orderDate: Date, channelCustomerNo: String? = nil, extraData: [String: String]? = nil) {
        self.id = id
        self.channelName = channelName
        self.channelId = channelId
        self.globalChannelName = globalChannelName
        self.globalChannelId = globalChannelId
        self.channelOrderSupport = channelOrderSupport
        self.channelOrderNo = channelOrderNo
        self.merchantOrderNo = merchantOrderNo
        self.status = status
        self.isBusinessOrder = isBusinessOrder
        self.acknowledgedDate = acknowledgedDate
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.merchantComment = merchantComment
        self.billingAddress = billingAddress
        self.shippingAddress = shippingAddress
        self.subTotalInclVat = subTotalInclVat
        self.subTotalVat = subTotalVat
        self.shippingCostsVat = shippingCostsVat
        self.totalInclVat = totalInclVat
        self.totalVat = totalVat
        self.originalSubTotalInclVat = originalSubTotalInclVat
        self.originalSubTotalVat = originalSubTotalVat
        self.originalShippingCostsInclVat = originalShippingCostsInclVat
        self.originalShippingCostsVat = originalShippingCostsVat
        self.originalTotalInclVat = originalTotalInclVat
        self.originalTotalVat = originalTotalVat
        self.lines = lines
        self.shippingCostsInclVat = shippingCostsInclVat
        self.phone = phone
        self.email = email
        self.companyRegistrationNo = companyRegistrationNo
        self.vatNo = vatNo
        self.paymentMethod = paymentMethod
        self.paymentReferenceNo = paymentReferenceNo
        self.currencyCode = currencyCode
        self.orderDate = orderDate
        self.channelCustomerNo = channelCustomerNo
        self.extraData = extraData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case channelName = "ChannelName"
        case channelId = "ChannelId"
        case globalChannelName = "GlobalChannelName"
        case globalChannelId = "GlobalChannelId"
        case channelOrderSupport = "ChannelOrderSupport"
        case channelOrderNo = "ChannelOrderNo"
        case merchantOrderNo = "MerchantOrderNo"
        case status = "Status"
        case isBusinessOrder = "IsBusinessOrder"
        case acknowledgedDate = "AcknowledgedDate"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case merchantComment = "MerchantComment"
        case billingAddress = "BillingAddress"
        case shippingAddress = "ShippingAddress"
        case subTotalInclVat = "SubTotalInclVat"
        case subTotalVat = "SubTotalVat"
        case shippingCostsVat = "ShippingCostsVat"
        case totalInclVat = "TotalInclVat"
        case totalVat = "TotalVat"
        case originalSubTotalInclVat = "OriginalSubTotalInclVat"
        case originalSubTotalVat = "OriginalSubTotalVat"
        case originalShippingCostsInclVat = "OriginalShippingCostsInclVat"
        case originalShippingCostsVat = "OriginalShippingCostsVat"
        case originalTotalInclVat = "OriginalTotalInclVat"
        case originalTotalVat = "OriginalTotalVat"
        case lines = "Lines"
        case shippingCostsInclVat = "ShippingCostsInclVat"
        case phone = "Phone"
        case email = "Email"
        case companyRegistrationNo = "CompanyRegistrationNo"
        case vatNo = "VatNo"
        case paymentMethod = "PaymentMethod"
        case paymentReferenceNo = "PaymentReferenceNo"
        case currencyCode = "CurrencyCode"
        case orderDate = "OrderDate"
        case channelCustomerNo = "ChannelCustomerNo"
        case extraData = "ExtraData"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(channelName, forKey: .channelName)
        try container.encodeIfPresent(channelId, forKey: .channelId)
        try container.encodeIfPresent(globalChannelName, forKey: .globalChannelName)
        try container.encodeIfPresent(globalChannelId, forKey: .globalChannelId)
        try container.encodeIfPresent(channelOrderSupport, forKey: .channelOrderSupport)
        try container.encodeIfPresent(channelOrderNo, forKey: .channelOrderNo)
        try container.encodeIfPresent(merchantOrderNo, forKey: .merchantOrderNo)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(isBusinessOrder, forKey: .isBusinessOrder)
        try container.encodeIfPresent(acknowledgedDate, forKey: .acknowledgedDate)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(merchantComment, forKey: .merchantComment)
        try container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        try container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
        try container.encodeIfPresent(subTotalInclVat, forKey: .subTotalInclVat)
        try container.encodeIfPresent(subTotalVat, forKey: .subTotalVat)
        try container.encodeIfPresent(shippingCostsVat, forKey: .shippingCostsVat)
        try container.encodeIfPresent(totalInclVat, forKey: .totalInclVat)
        try container.encodeIfPresent(totalVat, forKey: .totalVat)
        try container.encodeIfPresent(originalSubTotalInclVat, forKey: .originalSubTotalInclVat)
        try container.encodeIfPresent(originalSubTotalVat, forKey: .originalSubTotalVat)
        try container.encodeIfPresent(originalShippingCostsInclVat, forKey: .originalShippingCostsInclVat)
        try container.encodeIfPresent(originalShippingCostsVat, forKey: .originalShippingCostsVat)
        try container.encodeIfPresent(originalTotalInclVat, forKey: .originalTotalInclVat)
        try container.encodeIfPresent(originalTotalVat, forKey: .originalTotalVat)
        try container.encodeIfPresent(lines, forKey: .lines)
        try container.encodeIfPresent(shippingCostsInclVat, forKey: .shippingCostsInclVat)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(companyRegistrationNo, forKey: .companyRegistrationNo)
        try container.encodeIfPresent(vatNo, forKey: .vatNo)
        try container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
        try container.encodeIfPresent(paymentReferenceNo, forKey: .paymentReferenceNo)
        try container.encode(currencyCode, forKey: .currencyCode)
        try container.encode(orderDate, forKey: .orderDate)
        try container.encodeIfPresent(channelCustomerNo, forKey: .channelCustomerNo)
        try container.encodeIfPresent(extraData, forKey: .extraData)
    }
}

