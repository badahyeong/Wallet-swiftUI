//
//  CALayer.swift
//  Wallet-swiftUI
//
//  Created by 바다영 on 2024/02/08.
//

import Foundation
import UIKit

extension CALayer {
    
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        pointX: CGFloat = 0,
        pointY: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0,
        radius: CGFloat = 12) {
            shadowColor = color.cgColor
            shadowOpacity = alpha
            shadowOffset = CGSize(width: pointX, height: pointY)
            shadowRadius = blur / 2.0
            cornerRadius = radius
            if spread == 0 {
                shadowPath = nil
            } else {
                let diffX = -spread
                let rect = bounds.insetBy(dx: diffX, dy: diffX)
                shadowPath = UIBezierPath(rect: rect).cgPath
            }
        }
}
