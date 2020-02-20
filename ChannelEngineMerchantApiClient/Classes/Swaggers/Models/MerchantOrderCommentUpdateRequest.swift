//
// MerchantOrderCommentUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantOrderCommentUpdateRequest: Codable {

    /** Your own order reference for the order you would like to update the comment for */
    public var merchantOrderNo: String?
    /** The ChannelEngine order ID of the order you would like to update the comment for */
    public var orderId: Int?
    /** The merchant comment you would like add / update for the order */
    public var merchantComment: String

    public init(merchantOrderNo: String?, orderId: Int?, merchantComment: String) {
        self.merchantOrderNo = merchantOrderNo
        self.orderId = orderId
        self.merchantComment = merchantComment
    }

    public enum CodingKeys: String, CodingKey { 
        case merchantOrderNo = "MerchantOrderNo"
        case orderId = "OrderId"
        case merchantComment = "MerchantComment"
    }


}

