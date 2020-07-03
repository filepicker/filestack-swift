//
//  NetworkingService.swift
//  FilestackSDK
//
//  Created by Ruben Nine on 7/6/17.
//  Copyright © 2017 Filestack. All rights reserved.
//

import Alamofire
import Foundation

protocol NetworkingService {
    static var sessionManager: SessionManager { get }
}

protocol ProvidesBaseURL {
    static var baseURL: URL { get }
}

protocol NetworkingServiceWithBaseURL: NetworkingService & ProvidesBaseURL {
    static func buildURL(handle: String?, path: String?, extra: String?, queryItems: [URLQueryItem]?, security: Security?) -> URL?
}
