//
// OrderStatusView.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public enum OrderStatusView: String, Codable, CaseIterable {
    case inProgress = "IN_PROGRESS"
    case shipped = "SHIPPED"
    case inBackorder = "IN_BACKORDER"
    case manco = "MANCO"
    case canceled = "CANCELED"
    case inCombi = "IN_COMBI"
    case closed = "CLOSED"
    case new = "NEW"
    case returned = "RETURNED"
    case requiresCorrection = "REQUIRES_CORRECTION"
}
