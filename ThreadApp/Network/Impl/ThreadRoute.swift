//
//  ThreadRoute.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import RxSwift

/// VMRoute
class ThreadRoute:  BaseApiImpl, ThreadRouteProtocol  {
    /// getOutFit
    /// - Returns: Observable<ApiResponse<[VMRoomResponse]>>
    func getOutFit(pageNo: Int) -> Observable<ApiResponse<OutfitsResponse>> {
    return makeAPIRequestObservable(responseType: ApiResponse<OutfitsResponse>.self, url: RemoteApiConstants.Endpoints.getOutFits(pageNo).url, method: .Get, params: [:])
}

    
    

}
