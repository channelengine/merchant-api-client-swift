//
// OfferAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class OfferAPI {
    /**
     Get stock for products
     
     - parameter skus: (query) List of your products&#39; sku&#39;s 
     - parameter stockLocationIds: (query) The ChannelEngine id of the stock location(s) 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func offerGetStock(skus: [String], stockLocationIds: [Int], completion: @escaping ((_ data: CollectionOfMerchantOfferGetStockResponse?,_ error: Error?) -> Void)) {
        offerGetStockWithRequestBuilder(skus: skus, stockLocationIds: stockLocationIds).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get stock for products
     - GET /v2/offer/stock
     - Get stock of products at stock location(s)
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "TotalCount" : 5,
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : [ {
    "StockLocationId" : 0,
    "MerchantProductNo" : "MerchantProductNo",
    "Stock" : 6
  }, {
    "StockLocationId" : 0,
    "MerchantProductNo" : "MerchantProductNo",
    "Stock" : 6
  } ],
  "ItemsPerPage" : 5,
  "Count" : 1,
  "StatusCode" : 2,
  "LogId" : 7,
  "Success" : true
}}]
     
     - parameter skus: (query) List of your products&#39; sku&#39;s 
     - parameter stockLocationIds: (query) The ChannelEngine id of the stock location(s) 

     - returns: RequestBuilder<CollectionOfMerchantOfferGetStockResponse> 
     */
    open class func offerGetStockWithRequestBuilder(skus: [String], stockLocationIds: [Int]) -> RequestBuilder<CollectionOfMerchantOfferGetStockResponse> {
        let path = "/v2/offer/stock"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "skus": skus, 
            "stockLocationIds": stockLocationIds
        ])
        

        let requestBuilder: RequestBuilder<CollectionOfMerchantOfferGetStockResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update stock or price.
     
     - parameter updates: (body) References to the products that should be updated, and the new values  for the stock or price fields. It is possible to supply only one of the two fields  or both. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func offerStockPriceUpdate(updates: [MerchantStockPriceUpdateRequest], completion: @escaping ((_ data: SingleOfDictionary2?,_ error: Error?) -> Void)) {
        offerStockPriceUpdateWithRequestBuilder(updates: updates).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update stock or price.
     - PUT /v2/offer
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : {
    "key" : [ "Content", "Content" ]
  },
  "StatusCode" : 0,
  "LogId" : 6,
  "Success" : true
}}]
     
     - parameter updates: (body) References to the products that should be updated, and the new values  for the stock or price fields. It is possible to supply only one of the two fields  or both. 

     - returns: RequestBuilder<SingleOfDictionary2> 
     */
    open class func offerStockPriceUpdateWithRequestBuilder(updates: [MerchantStockPriceUpdateRequest]) -> RequestBuilder<SingleOfDictionary2> {
        let path = "/v2/offer"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updates)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SingleOfDictionary2>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
