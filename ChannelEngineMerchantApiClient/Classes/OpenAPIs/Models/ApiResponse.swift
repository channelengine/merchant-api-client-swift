//
// ApiResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ApiResponse: Codable, Hashable {

    public var statusCode: Int?
    public var requestId: String?
    public var logId: String?
    public var success: Bool?
    public var message: String?
    public var validationErrors: [String: [String]]?

    public init(statusCode: Int? = nil, requestId: String? = nil, logId: String? = nil, success: Bool? = nil, message: String? = nil, validationErrors: [String: [String]]? = nil) {
        self.statusCode = statusCode
        self.requestId = requestId
        self.logId = logId
        self.success = success
        self.message = message
        self.validationErrors = validationErrors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case statusCode = "StatusCode"
        case requestId = "RequestId"
        case logId = "LogId"
        case success = "Success"
        case message = "Message"
        case validationErrors = "ValidationErrors"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(statusCode, forKey: .statusCode)
        try container.encodeIfPresent(requestId, forKey: .requestId)
        try container.encodeIfPresent(logId, forKey: .logId)
        try container.encodeIfPresent(success, forKey: .success)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(validationErrors, forKey: .validationErrors)
    }
}

