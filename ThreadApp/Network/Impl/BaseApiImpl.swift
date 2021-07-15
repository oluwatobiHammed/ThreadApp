//
//  BaseApiImpl.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import RxSwift
import RxCocoa

enum Method: String {
    case Get
    case Post
    case Put
    case Delete
}


public class BaseApiImpl: IBaseApi {
    private lazy var jsonEncoder = JSONEncoder()
    private lazy var jsonDecoder = JSONDecoder()
    private var urlSession: URLSession
    public init(config:URLSessionConfiguration) {
        urlSession = URLSession(configuration:
            URLSessionConfiguration.default)
    }
    
    func makeAPIRequestObservable<T>(responseType: T.Type, url: URL, method: Method = .Get,params: [String : String]?) -> Observable<T> where T : Codable {
        var request = URLRequest(url:url)
        //request.addValue(apiKey, forHTTPHeaderField: "X-Auth-Token")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpMethod = method.rawValue.uppercased()
        switch method {
        case .Get:
            print("No body need ")
        case .Post:
            request.httpBody =  try? jsonEncoder.encode(params)
        case .Put:
            print("No body need ")
        case .Delete:
            print("No body need ")
        }
        
        //MARK: creating our observable
        return urlSession.rx.response(request: request)
            .debug()
            .flatMap { (response, responseString) -> Observable<T> in
                let responseData = String(data: responseString, encoding: String.Encoding.iso2022JP)
                do {
                    //check if the `responseString` contains the `errors` key, create a new json string with key `error`
                    //otherwise, create a new json string with key `data`
                    
                    let jsonString = (responseData?.localizedCaseInsensitiveContains("errors"))! ? try self.getJsonString(withKey: "error", forValue: responseData!) : try self.getJsonString(withKey: "data", forValue: responseData!)
                    
                    //map the result of `jsonString` above to the `responseType`
                    let requestResponse = try responseType.mapTo(jsonString: jsonString)!
                    //print(requestResponse)
                    
                    return Observable.just(requestResponse)
                    
                }
                catch let DecodingError.keyNotFound(key, context) {
                    print("Key '\(key)'not found",context.debugDescription)
                    throw DecodingError.keyNotFound(key, context)
                   
                }
        }
    }
    
    
    
    fileprivate func getJsonString(withKey: String, forValue: String) throws -> String {
        let jsonStringDictionary = "{\"\(withKey)\": \(forValue)}"
        return jsonStringDictionary
    }
}

