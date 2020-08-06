//
// OfferAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class OfferAPI {
    /**
     Get stock for products.
     
     - parameter skus: (query) List of your products&#39; sku&#39;s. 
     - parameter stockLocationIds: (query) The ChannelEngine id of the stock location(s). 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func offerGetStock(skus: [String], stockLocationIds: [Int], apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantOfferGetStockResponse?,_ error: Error?) -> Void)) {
        offerGetStockWithRequestBuilder(skus: skus, stockLocationIds: stockLocationIds).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get stock for products.
     - GET /v2/offer/stock
     - Get stock of products at stock location(s).
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter skus: (query) List of your products&#39; sku&#39;s. 
     - parameter stockLocationIds: (query) The ChannelEngine id of the stock location(s). 
     - returns: RequestBuilder<CollectionOfMerchantOfferGetStockResponse> 
     */
    open class func offerGetStockWithRequestBuilder(skus: [String], stockLocationIds: [Int]) -> RequestBuilder<CollectionOfMerchantOfferGetStockResponse> {
        let path = "/v2/offer/stock"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "skus": skus.encodeToJSON(), 
            "stockLocationIds": stockLocationIds.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CollectionOfMerchantOfferGetStockResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update stock or price.
     
     - parameter merchantStockPriceUpdateRequest: (body) References to the products that should be updated, and the new values&lt;br /&gt;for the stock or price fields. It is possible to supply only one of the two fields&lt;br /&gt;or both. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func offerStockPriceUpdate(merchantStockPriceUpdateRequest: [MerchantStockPriceUpdateRequest]? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: SingleOfDictionaryOfStringAndListOfString?,_ error: Error?) -> Void)) {
        offerStockPriceUpdateWithRequestBuilder(merchantStockPriceUpdateRequest: merchantStockPriceUpdateRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update stock or price.
     - PUT /v2/offer
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantStockPriceUpdateRequest: (body) References to the products that should be updated, and the new values&lt;br /&gt;for the stock or price fields. It is possible to supply only one of the two fields&lt;br /&gt;or both. (optional)
     - returns: RequestBuilder<SingleOfDictionaryOfStringAndListOfString> 
     */
    open class func offerStockPriceUpdateWithRequestBuilder(merchantStockPriceUpdateRequest: [MerchantStockPriceUpdateRequest]? = nil) -> RequestBuilder<SingleOfDictionaryOfStringAndListOfString> {
        let path = "/v2/offer"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantStockPriceUpdateRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SingleOfDictionaryOfStringAndListOfString>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
