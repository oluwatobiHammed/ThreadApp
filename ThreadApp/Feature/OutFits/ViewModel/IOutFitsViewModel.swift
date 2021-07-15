//
//  IOutFitsViewModel.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import RxSwift


/** `Protocol` For IOutFits view model
 - Important: The class expects binding so within your class you must have a IOutFitsViewModel like this:
 
 
 
       var IOutFitsResponses: PublishSubject<OutfitsResponse>  = PublishSubject()
       func getOutFIts()
 */

protocol IOutFitsViewModel {
    var outFitsResponses: PublishSubject<[Outfits]> { get }
    func getOutFIts(pageNo: Int)
   
}
