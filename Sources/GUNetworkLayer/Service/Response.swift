//
//  Response.swift
//  NetworkLayer
//
//  Created by Gleb Uvarkin on 06.07.2020.
//  Copyright © 2020 Gleb Uvarkin. All rights reserved.
//

import Foundation

public struct Response {
    public let data: Data?
    public let statusCode: Int
    public let headers: [AnyHashable: Any]
}
