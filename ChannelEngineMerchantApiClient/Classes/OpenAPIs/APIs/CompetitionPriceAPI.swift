//
// CompetitionPriceAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CompetitionPriceAPI {

    /**
     Get the BuyBox winner prices
     
     - parameter channelId: (query) The id of the channel (optional)
     - parameter gtinList: (query) Search products by submitting a list of GTIN&#39;s. (optional)&lt;br /&gt;Max. 2000. (optional)
     - parameter skuList: (query) Search products by submitting a list of Sku&#39;s. (optional)&lt;br /&gt;Max. 2000. If GtinList is already set, this one is ignored. (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func competitionPricesGetBuyBoxPrices(channelId: Int? = nil, gtinList: [String]? = nil, skuList: [String]? = nil, page: Int? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantProductWithBuyBoxPrice?, _ error: Error?) -> Void)) {
        competitionPricesGetBuyBoxPricesWithRequestBuilder(channelId: channelId, gtinList: gtinList, skuList: skuList, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the BuyBox winner prices
     - GET /v2/competitionprices/buyboxprices
     - Get the current price of the BuyBox winner per product for a channel.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter channelId: (query) The id of the channel (optional)
     - parameter gtinList: (query) Search products by submitting a list of GTIN&#39;s. (optional)&lt;br /&gt;Max. 2000. (optional)
     - parameter skuList: (query) Search products by submitting a list of Sku&#39;s. (optional)&lt;br /&gt;Max. 2000. If GtinList is already set, this one is ignored. (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - returns: RequestBuilder<CollectionOfMerchantProductWithBuyBoxPrice> 
     */
    open class func competitionPricesGetBuyBoxPricesWithRequestBuilder(channelId: Int? = nil, gtinList: [String]? = nil, skuList: [String]? = nil, page: Int? = nil) -> RequestBuilder<CollectionOfMerchantProductWithBuyBoxPrice> {
        let localVariablePath = "/v2/competitionprices/buyboxprices"
        let localVariableURLString = ChannelEngineMerchantApiClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "channelId": channelId?.encodeToJSON(),
            "gtinList": gtinList?.encodeToJSON(),
            "skuList": skuList?.encodeToJSON(),
            "page": page?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CollectionOfMerchantProductWithBuyBoxPrice>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
