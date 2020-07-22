//
//  CloudMersiveEndPoint.swift
//  NetworkLayer
//
//  Created by Gleb Uvarkin on 25.06.2020.
//  Copyright © 2020 Gleb Uvarkin. All rights reserved.
//

import Foundation

public struct Request {
    var path: String
    var httpMethod: HTTPMethod
    var task: HTTPTask

    public init(path: String, httpMethod: HTTPMethod, task: HTTPTask) {
        self.path = path
        self.httpMethod = httpMethod
        self.task = task
    }
}
