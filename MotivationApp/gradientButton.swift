//
//  gradientButton.swift
//  MotivationApp
//
//  Created by ktynnz on 3/11/22.
//

import UIKit

class gradientButton: UIButton {

//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        let gradient = CAGradientLayer()
//        gradient.frame = bounds
//        gradient.colors = [UIColor.systemYellow.cgColor, UIColor.systemOrange.cgColor]
//
//        layer.addSublayer(gradient)
//    }
    let gradient = CAGradientLayer()
    
    init(colors: [CGColor]) {
        super.init(frame: .zero)
       
        gradient.frame = bounds
        gradient.colors = colors
        layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
}
