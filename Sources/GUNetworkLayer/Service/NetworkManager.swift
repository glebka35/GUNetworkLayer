//
//  NetworkManager.swift
//  NetworkLayer
//
//  Created by Gleb Uvarkin on 06.07.2020.
//  Copyright © 2020 Gleb Uvarkin. All rights reserved.
//

import Foundation

public typealias NetworkCompletion = (_ apiResponse: Response?, _ error: Error?)->()

public protocol NetworkManager {
    func execute(request: Request, with completion: @escaping NetworkCompletion)
}
