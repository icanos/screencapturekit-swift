//
//  main.swift
//  Test
//
//  Created by Marcus Westin on 2023-01-23.
//

import Foundation
import ScreenCaptureKit

print("Hello, World!")

let availableContent = try await SCShareableContent.excludingDesktopWindows(false, onScreenWindowsOnly: true)

for (i, window) in availableContent.windows.enumerated() {
    print(i, "window", window.title)
}
