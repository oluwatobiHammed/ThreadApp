//
//  ApiResponse.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation

 struct ApiResponse<T: Codable>: Codable {
     var data: T? = nil
     var error: ApiError? = nil
}
