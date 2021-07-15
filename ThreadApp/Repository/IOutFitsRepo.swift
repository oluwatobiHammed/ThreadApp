//
//  IOutFitsRepo.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import RxSwift


 protocol IOutFitsRepo {
    func getOutFits(pageNo: Int) -> Observable<ApiResponse<OutfitsResponse>>
}
