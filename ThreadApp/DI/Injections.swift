//
//  Injections.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation
import Swinject
import SwinjectStoryboard

extension SwinjectStoryboard {
    /// Where all the dependency inject is setup in SwinjectStoryboard `extension`
    public static func setup() {
        OutFitsInjections.setup(container: defaultContainer)
        
    }
}

