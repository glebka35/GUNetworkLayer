//
//  File.swift
//  
//
//  Created by Gleb Uvarkin on 22.07.2020.
//

import Foundation

public enum MultiPartDataKeys: String {
    case boundary
    case key
    case fileName
    case type
    case value
}

public struct FormDataParameterEncoder {
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters?) {
        guard
            let parameters = parameters,
            let boundary = parameters[MultiPartDataKeys.boundary.rawValue] as? String
        else { return }

        let body = NSMutableData()
        let boundaryPrefix = "--\(boundary)\r\n"

        body.appendString(boundaryPrefix)
        if let key = parameters[MultiPartDataKeys.key.rawValue] as? String,
           let fileName = parameters[MultiPartDataKeys.fileName.rawValue]{
            body.appendString("Content-Disposition: form-data; name=\"\(key)\"; filename=\"\(fileName)\"\r\n")
        }
        if let type = parameters[MultiPartDataKeys.type.rawValue] as? String {
            body.appendString("Content-Type: \(type)\r\n\r\n")
        }
        if let value = parameters[MultiPartDataKeys.value.rawValue] as? Data {
            body.append(value)
        }

        body.appendString("\r\n")
        body.appendString("--".appending(boundary.appending("--")))

        urlRequest.httpBody = body as Data
    }
}
