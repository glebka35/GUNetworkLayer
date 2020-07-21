//
//  CloudMersiveEndPoint.swift
//  NetworkLayer
//
//  Created by Gleb Uvarkin on 25.06.2020.
//  Copyright © 2020 Gleb Uvarkin. All rights reserved.
//

import Foundation

public struct Request {
    var headers: HTTPHeaders?
    var boundary: String
    var path: String
    var httpMethod: HTTPMethod
    var task: HTTPTask

    public init(headers: HTTPHeaders?, boundary: String, path: String, httpMethod: HTTPMethod, task: HTTPTask) {
        self.headers = headers
        self.boundary = boundary
        self.path = path
        self.httpMethod = httpMethod
        self.task = task
    }
}
