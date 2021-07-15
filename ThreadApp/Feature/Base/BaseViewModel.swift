//
//  BaseViewModel.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import RxSwift


/** BaseViewModel it holds all the properties and methods for
     passing around model for error handling, disposeBag,
    alertValue, apiError and throwableError
  */
class BaseViewModel {
    
    let disposeBag = DisposeBag()
    let isLoading: PublishSubject<Bool> = PublishSubject()
    let alertValue: PublishSubject<AlertValue> = PublishSubject()
    let apiError: PublishSubject<ApiError> = PublishSubject()
    let throwableError: PublishSubject<Error> = PublishSubject()

    func viewDidLoad() { }

    func viewWillAppear() { }

    func viewDidAppear() { }

    func viewWillDisappear() { }

    func viewDidDisappear() { }
    
}
