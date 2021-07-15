//
//  OutFitsInjections.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import Swinject
import SwinjectStoryboard

class OutFitsInjections {
   
   /// Setup Containier for People Feature
   /// - Parameter container: Container
   static func setup(container: Container) {
       container.register(ThreadRouteProtocol.self) { _ in ThreadRoute(config: .default) }
       container.register(IOutFitsRepo.self) { res in
           OutFitsRepoImpl(threadRouteProtocol: res.resolve(ThreadRouteProtocol.self)!)
       }
       container.register(IOutFitsViewModel.self) { res in
        OutFitsViewModel(outfitRepo: res.resolve(IOutFitsRepo.self)!)
       }
       container.register(OutFitsViewModel.self) { res in
        OutFitsViewModel(outfitRepo: res.resolve(IOutFitsRepo.self)!)
       }
       
       
       // MARK: - Storyboard
       container.storyboardInitCompleted(OutFitsViewController.self) { (res, cntrl) in
        cntrl.outFitsViewModel = res.resolve(IOutFitsViewModel.self)
       }
       
       container.storyboardInitCompleted(OutFitsViewController.self) { (res, cntrl) in
        cntrl.outFitsViewModel = res.resolve(OutFitsViewModel.self)
       }
       
     
   }
}
