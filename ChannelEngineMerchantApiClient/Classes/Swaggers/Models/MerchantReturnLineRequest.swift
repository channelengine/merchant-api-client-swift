//
// MerchantReturnLineRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MerchantReturnLineRequest: Codable {

    public var merchantProductNo: String
    public var quantity: Int


    public enum CodingKeys: String, CodingKey { 
        case merchantProductNo = "MerchantProductNo"
        case quantity = "Quantity"
    }


}
