//
//  OutFitsViewModel.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//


import RxSwift
import RxCocoa

/**
 This is the RoomViewModel it inherit from
 BaseViewModel and follows IOutFitsViewModel
 protocol.
 

 */
class OutFitsViewModel: BaseViewModel, IOutFitsViewModel {

    var outFitsResponses: PublishSubject<[Outfits]>  = PublishSubject()
    let outfitRepo: IOutFitsRepo
    
    init(outfitRepo: IOutFitsRepo) {
        self.outfitRepo = outfitRepo
    }
    
    func getOutFIts(pageNo: Int) {
        self.isLoading.onNext(true)
        outfitRepo.getOutFits(pageNo: pageNo).subscribe ( onNext: { [weak self] res in
            self?.isLoading.onNext(false)
            if let roomRes = res.data?.outfits {
                self?.outFitsResponses.onNext(roomRes)
            }
            else if let apiErr = res.error {
            self?.apiError.onNext(apiErr)
        }
        },
        onError: { [weak self] error in
            self?.isLoading.onNext(false)
            self?.throwableError.onNext(error)
        }

    ).disposed(by: disposeBag)
    
    }
    

}
