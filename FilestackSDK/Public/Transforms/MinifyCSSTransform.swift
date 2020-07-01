//
//  MinifyCSSTransform.swift
//  FilestackSDK
//
//  Created by Ruben Nine on 13/08/2019.
//  Copyright © 2019 Filestack. All rights reserved.
//

import Foundation

/// Minifies your CSS files.
@objc(FSMinifyCSSTransform)
public class MinifyCSSTransform: Transform {
    // MARK: - Lifecycle

    /// Initializes a `MinifyCSSTransform` object.
    @objc public init() {
        super.init(name: "minify_css")
    }
}

// MARK: - Public Functions

public extension MinifyCSSTransform {
    /// Adds the `level` option.
    ///
    /// - Parameter value: Minification level.
    @discardableResult
    @objc func level(_ value: Int) -> Self {
        return appending(key: "level", value: value)
    }

    /// Adds the `gzip` option.
    ///
    /// - Parameter value: Whether to compress file and add content encoding gzip header.
    @discardableResult
    @objc func gzip(_ value: Bool) -> Self {
        return appending(key: "gzip", value: value)
    }
}
