//
// AdvanceSettingsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AdvanceSettingsResponse: Codable, Hashable {

    public var manageStock: Bool?
    public var disableAddressValidation: Bool?
    public var skipHouseNumberValidation: Bool?
    public var skipHouseNumberValidationForCountryCodes: [String]?
    public var setOrdersToClosedOnImport: Bool?
    public var disableStockReservation: Bool?
    public var disableAutoOrderCancellation: Bool?
    public var automaticallySetPhoneNumberIfEmpty: String?
    public var defaultVatRate: Double?
    public var orderTooLongOnNewHoursOffset: Int?

    public init(manageStock: Bool? = nil, disableAddressValidation: Bool? = nil, skipHouseNumberValidation: Bool? = nil, skipHouseNumberValidationForCountryCodes: [String]? = nil, setOrdersToClosedOnImport: Bool? = nil, disableStockReservation: Bool? = nil, disableAutoOrderCancellation: Bool? = nil, automaticallySetPhoneNumberIfEmpty: String? = nil, defaultVatRate: Double? = nil, orderTooLongOnNewHoursOffset: Int? = nil) {
        self.manageStock = manageStock
        self.disableAddressValidation = disableAddressValidation
        self.skipHouseNumberValidation = skipHouseNumberValidation
        self.skipHouseNumberValidationForCountryCodes = skipHouseNumberValidationForCountryCodes
        self.setOrdersToClosedOnImport = setOrdersToClosedOnImport
        self.disableStockReservation = disableStockReservation
        self.disableAutoOrderCancellation = disableAutoOrderCancellation
        self.automaticallySetPhoneNumberIfEmpty = automaticallySetPhoneNumberIfEmpty
        self.defaultVatRate = defaultVatRate
        self.orderTooLongOnNewHoursOffset = orderTooLongOnNewHoursOffset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case manageStock = "ManageStock"
        case disableAddressValidation = "DisableAddressValidation"
        case skipHouseNumberValidation = "SkipHouseNumberValidation"
        case skipHouseNumberValidationForCountryCodes = "SkipHouseNumberValidationForCountryCodes"
        case setOrdersToClosedOnImport = "SetOrdersToClosedOnImport"
        case disableStockReservation = "DisableStockReservation"
        case disableAutoOrderCancellation = "DisableAutoOrderCancellation"
        case automaticallySetPhoneNumberIfEmpty = "AutomaticallySetPhoneNumberIfEmpty"
        case defaultVatRate = "DefaultVatRate"
        case orderTooLongOnNewHoursOffset = "OrderTooLongOnNewHoursOffset"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(manageStock, forKey: .manageStock)
        try container.encodeIfPresent(disableAddressValidation, forKey: .disableAddressValidation)
        try container.encodeIfPresent(skipHouseNumberValidation, forKey: .skipHouseNumberValidation)
        try container.encodeIfPresent(skipHouseNumberValidationForCountryCodes, forKey: .skipHouseNumberValidationForCountryCodes)
        try container.encodeIfPresent(setOrdersToClosedOnImport, forKey: .setOrdersToClosedOnImport)
        try container.encodeIfPresent(disableStockReservation, forKey: .disableStockReservation)
        try container.encodeIfPresent(disableAutoOrderCancellation, forKey: .disableAutoOrderCancellation)
        try container.encodeIfPresent(automaticallySetPhoneNumberIfEmpty, forKey: .automaticallySetPhoneNumberIfEmpty)
        try container.encodeIfPresent(defaultVatRate, forKey: .defaultVatRate)
        try container.encodeIfPresent(orderTooLongOnNewHoursOffset, forKey: .orderTooLongOnNewHoursOffset)
    }
}

