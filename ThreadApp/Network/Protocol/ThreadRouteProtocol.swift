//
//  ThreadRouteProtocol.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import RxSwift

protocol ThreadRouteProtocol {
    func getOutFit(pageNo: Int) -> Observable<ApiResponse<OutfitsResponse>>
}
