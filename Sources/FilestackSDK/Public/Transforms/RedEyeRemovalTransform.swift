//
//  RedEyeRemovalTransform.swift
//  FilestackSDK
//
//  Created by Mihály Papp on 15/06/2018.
//  Copyright © 2018 Filestack. All rights reserved.
//

import Foundation

/// Removes the red eye effect from photos.
public class RedEyeRemovalTransform: Transform {
    // MARK: - Lifecycle

    /// Initializes a `RedEyeRemovalTransform` object.
    public init() {
        super.init(name: "redeye")
    }
}