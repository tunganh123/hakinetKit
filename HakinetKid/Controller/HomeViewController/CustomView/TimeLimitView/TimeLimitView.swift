//
//  TimeLimitView.swift
//  HakinetKid
//
//  Created by Louis on 1/8/25.
//

import UIKit
import LouisPod
class TimeLimitView: BaseView {
    
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var totalTimeLabel: UILabel!
    @IBOutlet weak var timeCoudownLabel: UILabel!
    @IBOutlet weak var timeUsedLabel: UILabel!
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
