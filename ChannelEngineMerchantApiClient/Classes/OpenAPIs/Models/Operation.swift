//
// Operation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct Operation: Codable, Hashable {

    public var op: String?
    public var value: AnyCodable?
    public var path: String?

    public init(op: String? = nil, value: AnyCodable? = nil, path: String? = nil) {
        self.op = op
        self.value = value
        self.path = path
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case op
        case value
        case path
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(op, forKey: .op)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(path, forKey: .path)
    }



}
