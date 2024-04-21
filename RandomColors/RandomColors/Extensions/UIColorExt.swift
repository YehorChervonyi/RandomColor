//
//  UIColorExt.swift
//  RandomColors
//
//  Created by ferret on 21.04.2024.
//

import UIKit

extension UIColor{
    static func Random() -> UIColor{
        let randomColor = UIColor(red: CGFloat.random(in: 0...1.0),
                                  green: CGFloat.random(in: 0...1.0),
                                  blue: CGFloat.random(in: 0...1.0),
                                  alpha: 1)
        return randomColor
    }
}
