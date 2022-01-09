//
//  File.swift
//  
//
//  Created by Gleb Uvarkin on 22.07.2020.
//

import Foundation

public enum HTTPBodyContentType {
    case urlEncoded
    case jsonEncoded
    case multipartFormData

    func encode(urlRequest: inout URLRequest,
                bodyParameters: Parameters?) throws {
        do {
            switch self {
            case .jsonEncoded:
                try JSONParameterEncoder.encode(urlRequest: &urlRequest, with: bodyParameters)
            case .urlEncoded:
                try URLParameterEncoder.encode(urlRequest: &urlRequest, with: bodyParameters, isBody: true)
            case .multipartFormData:
                FormDataParameterEncoder.encode(urlRequest: &urlRequest, with: bodyParameters)
            }
        }
    }
}
