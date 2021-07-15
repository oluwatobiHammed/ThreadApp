//
//  IBaseApi.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import RxSwift

///  for URLSession takes
protocol IBaseApi {
    //MARK: function for URLSession takes
    func makeAPIRequestObservable<T: Codable>(responseType: T.Type, url: URL, method: Method,params: [String : String]?) -> Observable<T>
}

