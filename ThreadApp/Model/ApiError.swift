//
//  ApiError.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//
import Foundation
struct ApiError: Codable {
    let errors: [ErrorMessage]
    let statusCode: CLong
}
