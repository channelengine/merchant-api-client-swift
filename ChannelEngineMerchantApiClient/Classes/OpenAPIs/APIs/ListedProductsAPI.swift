//
// ListedProductsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class ListedProductsAPI {
    /**
     Get Listed Products
     
     - parameter channelId: (path)  
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listedProductGetByFilter(channelId: Int, page: Int? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfChannelListedProductResponse?,_ error: Error?) -> Void)) {
        listedProductGetByFilterWithRequestBuilder(channelId: channelId, page: page).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Listed Products
     - GET /v2/channels/{channelId}/products
     - Gets the status of products listed for channel (export status) and on a channel (channel status).<br />Includes products that were previously deleted from but are now set to be created again.<br />Note: not all channels provide adequate options to retrieve the status on the channel.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter channelId: (path)  
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - returns: RequestBuilder<CollectionOfChannelListedProductResponse> 
     */
    open class func listedProductGetByFilterWithRequestBuilder(channelId: Int, page: Int? = nil) -> RequestBuilder<CollectionOfChannelListedProductResponse> {
        var path = "/v2/channels/{channelId}/products"
        let channelIdPreEscape = "\(APIHelper.mapValueToPathItem(channelId))"
        let channelIdPostEscape = channelIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{channelId}", with: channelIdPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CollectionOfChannelListedProductResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
