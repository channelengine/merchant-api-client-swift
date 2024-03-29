//
// StockLocationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class StockLocationAPI {

    /**

     - parameter merchantStockLocationCreateRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func stockLocationCreate(merchantStockLocationCreateRequest: MerchantStockLocationCreateRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) {
        stockLocationCreateWithRequestBuilder(merchantStockLocationCreateRequest: merchantStockLocationCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - POST /v2/stocklocations
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantStockLocationCreateRequest: (body)  (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func stockLocationCreateWithRequestBuilder(merchantStockLocationCreateRequest: MerchantStockLocationCreateRequest? = nil) -> RequestBuilder<ApiResponse> {
        let localVariablePath = "/v2/stocklocations"
        let localVariableURLString = ChannelEngineMerchantApiClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantStockLocationCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get the stock locations (or virtual warehouses).
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func stockLocationIndex(apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantStockLocationResponse?, _ error: Error?) -> Void)) {
        stockLocationIndexWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the stock locations (or virtual warehouses).
     - GET /v2/stocklocations
     - Get the different stock locations (or virtual warehouses) that are in use.<br />This may include stock locations for 'fulfillment by ... (Amazon/bol/CDiscount)' (FBA/LVB/FBC) solutions.<br />You can use the id's to get to stock of products in specific stock location, e.g. the FBA stock for the products.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - returns: RequestBuilder<CollectionOfMerchantStockLocationResponse> 
     */
    open class func stockLocationIndexWithRequestBuilder() -> RequestBuilder<CollectionOfMerchantStockLocationResponse> {
        let localVariablePath = "/v2/stocklocations"
        let localVariableURLString = ChannelEngineMerchantApiClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CollectionOfMerchantStockLocationResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
