//
//  File.swift
//  
//
//  Created by Gleb Uvarkin on 21.07.2020.
//

import Foundation

public protocol ClientSettingsProviderProtocol {
    var settings: ClientSettings { get }
    var baseURL: URL { get }
}
