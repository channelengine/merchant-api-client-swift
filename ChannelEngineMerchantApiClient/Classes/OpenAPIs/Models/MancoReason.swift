//
// MancoReason.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public enum MancoReason: String, Codable, CaseIterable {
    case notInStock = "NOT_IN_STOCK"
    case damaged = "DAMAGED"
    case incomplete = "INCOMPLETE"
    case clientCancelled = "CLIENT_CANCELLED"
    case invalidAddress = "INVALID_ADDRESS"
    case other = "OTHER"
}