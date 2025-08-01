//
//  ApplicationView.swift
//  HakinetKid
//
//  Created by Louis on 1/8/25.
//

import UIKit
import LouisPod

class ApplicationView: BaseView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    
    override func setupUI() {
        
    }
}
