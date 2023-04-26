//
//  File.swift
//  
//
//  Created by Gordon Byrnes on 2023-04-25.
//

import Foundation

/// Track the progress of an upload.
public class UploadProgress: ObservableObject {
    @Published public var progress: Double
    @Published public var text: String

    public init(progress: Double = 0.0, text: String = "") {
        self.progress = progress
        self.text = text
    }
}
