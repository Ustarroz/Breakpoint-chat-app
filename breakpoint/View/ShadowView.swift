//
//  ShadowView.swift
//  breakpoint
//
//  Created by robin ustarroz on 03/11/2017.
//  Copyright © 2017 robin ustarroz. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        setupView()
        super.awakeFromNib()
    }
   
    func setupView() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
    }

}
