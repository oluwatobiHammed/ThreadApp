//
//  OutFitsImpl.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import RxSwift


 struct OutFitsRepoImpl: IOutFitsRepo {
 
     let threadRouteProtocol: ThreadRouteProtocol?
    
    
     init(threadRouteProtocol: ThreadRouteProtocol) {
        self.threadRouteProtocol = threadRouteProtocol
        
    }
    
    func getOutFits(pageNo: Int) -> Observable<ApiResponse<OutfitsResponse>> {
        return threadRouteProtocol!.getOutFit(pageNo: pageNo)
    }
   
}


