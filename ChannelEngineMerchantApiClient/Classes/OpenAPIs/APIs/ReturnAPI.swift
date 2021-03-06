//
// ReturnAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ReturnAPI {
    /**
     Create Return.
     
     - parameter merchantReturnRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnDeclareForMerchant(merchantReturnRequest: MerchantReturnRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) {
        returnDeclareForMerchantWithRequestBuilder(merchantReturnRequest: merchantReturnRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Return.
     - POST /v2/returns/merchant
     - Mark (part of) an order as returned by the customer.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantReturnRequest: (body)  (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func returnDeclareForMerchantWithRequestBuilder(merchantReturnRequest: MerchantReturnRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/returns/merchant"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantReturnRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Return.
     
     - parameter merchantOrderNo: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnGetByMerchantOrderNo(merchantOrderNo: String, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantSingleOrderReturnResponse?, _ error: Error?) -> Void)) {
        returnGetByMerchantOrderNoWithRequestBuilder(merchantOrderNo: merchantOrderNo).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Return.
     - GET /v2/returns/merchant/{merchantOrderNo}
     - Retrieve returns based on the supplied merchant order number. May return more than 1 result.<br />This call is supposed to be used by merchants. Channels should use the 'GET /v2/returns/channel'<br />call.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantOrderNo: (path)  
     - returns: RequestBuilder<CollectionOfMerchantSingleOrderReturnResponse> 
     */
    open class func returnGetByMerchantOrderNoWithRequestBuilder(merchantOrderNo: String) -> RequestBuilder<CollectionOfMerchantSingleOrderReturnResponse> {
        var path = "/v2/returns/merchant/{merchantOrderNo}"
        let merchantOrderNoPreEscape = "\(APIHelper.mapValueToPathItem(merchantOrderNo))"
        let merchantOrderNoPostEscape = merchantOrderNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantOrderNo}", with: merchantOrderNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionOfMerchantSingleOrderReturnResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Returns.
     
     - parameter merchantOrderNos: (query) Filter on unique order reference used by the merchant. (optional)
     - parameter channelOrderNos: (query) Filter on unique order reference used by the channel. (optional)
     - parameter fulfillmentType: (query) Filter on the fulfillment type of the order. (optional)
     - parameter createdSince: (query) Deprecated, please use FromDate instead. (optional)
     - parameter statuses: (query) Return status(es) to filter on. (optional)
     - parameter reasons: (query) Return reason(s) to filter on. (optional)
     - parameter fromDate: (query) Filter on the creation date, starting from this date. This date is inclusive. (optional)
     - parameter toDate: (query) Filter on the creation date, until this date. This date is exclusive. (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnGetDeclaredByChannel(merchantOrderNos: [String]? = nil, channelOrderNos: [String]? = nil, fulfillmentType: FulfillmentType? = nil, createdSince: Date? = nil, statuses: [ReturnStatus]? = nil, reasons: [ReturnReason]? = nil, fromDate: Date? = nil, toDate: Date? = nil, page: Int? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantReturnResponse?, _ error: Error?) -> Void)) {
        returnGetDeclaredByChannelWithRequestBuilder(merchantOrderNos: merchantOrderNos, channelOrderNos: channelOrderNos, fulfillmentType: fulfillmentType, createdSince: createdSince, statuses: statuses, reasons: reasons, fromDate: fromDate, toDate: toDate, page: page).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Returns.
     - GET /v2/returns/merchant
     - Get all returns created by the channel. This call is supposed<br />to be used by merchants. Channels should use the 'GET /v2/returns/channel'<br />call.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantOrderNos: (query) Filter on unique order reference used by the merchant. (optional)
     - parameter channelOrderNos: (query) Filter on unique order reference used by the channel. (optional)
     - parameter fulfillmentType: (query) Filter on the fulfillment type of the order. (optional)
     - parameter createdSince: (query) Deprecated, please use FromDate instead. (optional)
     - parameter statuses: (query) Return status(es) to filter on. (optional)
     - parameter reasons: (query) Return reason(s) to filter on. (optional)
     - parameter fromDate: (query) Filter on the creation date, starting from this date. This date is inclusive. (optional)
     - parameter toDate: (query) Filter on the creation date, until this date. This date is exclusive. (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - returns: RequestBuilder<CollectionOfMerchantReturnResponse> 
     */
    open class func returnGetDeclaredByChannelWithRequestBuilder(merchantOrderNos: [String]? = nil, channelOrderNos: [String]? = nil, fulfillmentType: FulfillmentType? = nil, createdSince: Date? = nil, statuses: [ReturnStatus]? = nil, reasons: [ReturnReason]? = nil, fromDate: Date? = nil, toDate: Date? = nil, page: Int? = nil) -> RequestBuilder<CollectionOfMerchantReturnResponse> {
        let path = "/v2/returns/merchant"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "merchantOrderNos": merchantOrderNos?.encodeToJSON(),
            "channelOrderNos": channelOrderNos?.encodeToJSON(),
            "fulfillmentType": fulfillmentType?.encodeToJSON(),
            "createdSince": createdSince?.encodeToJSON(),
            "statuses": statuses?.encodeToJSON(),
            "reasons": reasons?.encodeToJSON(),
            "fromDate": fromDate?.encodeToJSON(),
            "toDate": toDate?.encodeToJSON(),
            "page": page?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionOfMerchantReturnResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Returns.
     
     - parameter creatorType: (query) Filter on the return&#39;s creator. Default is MIXED. (optional)
     - parameter merchantOrderNos: (query) Filter on unique order reference used by the merchant. (optional)
     - parameter channelOrderNos: (query) Filter on unique order reference used by the channel. (optional)
     - parameter fulfillmentType: (query) Filter on the fulfillment type of the order. (optional)
     - parameter createdSince: (query) Deprecated, please use FromDate instead. (optional)
     - parameter statuses: (query) Return status(es) to filter on. (optional)
     - parameter reasons: (query) Return reason(s) to filter on. (optional)
     - parameter fromDate: (query) Filter on the creation date, starting from this date. This date is inclusive. (optional)
     - parameter toDate: (query) Filter on the creation date, until this date. This date is exclusive. (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnGetReturns(creatorType: CreatorFilter? = nil, merchantOrderNos: [String]? = nil, channelOrderNos: [String]? = nil, fulfillmentType: FulfillmentType? = nil, createdSince: Date? = nil, statuses: [ReturnStatus]? = nil, reasons: [ReturnReason]? = nil, fromDate: Date? = nil, toDate: Date? = nil, page: Int? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantReturnResponse?, _ error: Error?) -> Void)) {
        returnGetReturnsWithRequestBuilder(creatorType: creatorType, merchantOrderNos: merchantOrderNos, channelOrderNos: channelOrderNos, fulfillmentType: fulfillmentType, createdSince: createdSince, statuses: statuses, reasons: reasons, fromDate: fromDate, toDate: toDate, page: page).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Returns.
     - GET /v2/returns
     - Get all returns created by the merchant. This call is supposed<br />to be used by merchants. To get returns created by channels, the 'GET /v2/returns/merchant' endpoint should be used.<br />Channels should use the 'GET /v2/returns/channel' call.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter creatorType: (query) Filter on the return&#39;s creator. Default is MIXED. (optional)
     - parameter merchantOrderNos: (query) Filter on unique order reference used by the merchant. (optional)
     - parameter channelOrderNos: (query) Filter on unique order reference used by the channel. (optional)
     - parameter fulfillmentType: (query) Filter on the fulfillment type of the order. (optional)
     - parameter createdSince: (query) Deprecated, please use FromDate instead. (optional)
     - parameter statuses: (query) Return status(es) to filter on. (optional)
     - parameter reasons: (query) Return reason(s) to filter on. (optional)
     - parameter fromDate: (query) Filter on the creation date, starting from this date. This date is inclusive. (optional)
     - parameter toDate: (query) Filter on the creation date, until this date. This date is exclusive. (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - returns: RequestBuilder<CollectionOfMerchantReturnResponse> 
     */
    open class func returnGetReturnsWithRequestBuilder(creatorType: CreatorFilter? = nil, merchantOrderNos: [String]? = nil, channelOrderNos: [String]? = nil, fulfillmentType: FulfillmentType? = nil, createdSince: Date? = nil, statuses: [ReturnStatus]? = nil, reasons: [ReturnReason]? = nil, fromDate: Date? = nil, toDate: Date? = nil, page: Int? = nil) -> RequestBuilder<CollectionOfMerchantReturnResponse> {
        let path = "/v2/returns"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "creatorType": creatorType?.encodeToJSON(),
            "merchantOrderNos": merchantOrderNos?.encodeToJSON(),
            "channelOrderNos": channelOrderNos?.encodeToJSON(),
            "fulfillmentType": fulfillmentType?.encodeToJSON(),
            "createdSince": createdSince?.encodeToJSON(),
            "statuses": statuses?.encodeToJSON(),
            "reasons": reasons?.encodeToJSON(),
            "fromDate": fromDate?.encodeToJSON(),
            "toDate": toDate?.encodeToJSON(),
            "page": page?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionOfMerchantReturnResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Unhandled Returns.
     
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnGetUnhandled(page: Int? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantReturnResponse?, _ error: Error?) -> Void)) {
        returnGetUnhandledWithRequestBuilder(page: page).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Unhandled Returns.
     - GET /v2/returns/merchant/new
     - Get all new / unhandled returns created by channels. This call is supposed<br />to be used by merchants. Channels should use the 'GET /v2/returns/channel'<br />call.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - returns: RequestBuilder<CollectionOfMerchantReturnResponse> 
     */
    open class func returnGetUnhandledWithRequestBuilder(page: Int? = nil) -> RequestBuilder<CollectionOfMerchantReturnResponse> {
        let path = "/v2/returns/merchant/new"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionOfMerchantReturnResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Mark a return as received.
     
     - parameter merchantReturnUpdateRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func returnUpdateForMerchant(merchantReturnUpdateRequest: MerchantReturnUpdateRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?, _ error: Error?) -> Void)) {
        returnUpdateForMerchantWithRequestBuilder(merchantReturnUpdateRequest: merchantReturnUpdateRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Mark a return as received.
     - PUT /v2/returns
     - Mark a return as received.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantReturnUpdateRequest: (body)  (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func returnUpdateForMerchantWithRequestBuilder(merchantReturnUpdateRequest: MerchantReturnUpdateRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/returns"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantReturnUpdateRequest)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
