//
//  ImageUtils.swift
//  MyPressure
//
//  Created by fozza on 2023/9/14.
//

import Foundation
import SwiftUI

class ImageUtils {
    static func loadImage(name: String) -> Image {
        return Image(uiImage: UIImage(named: name)!)
    }
}
