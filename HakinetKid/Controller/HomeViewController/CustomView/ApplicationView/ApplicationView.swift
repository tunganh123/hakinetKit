//
//  ApplicationView.swift
//  HakinetKid
//
//  Created by Louis on 1/8/25.
//

import UIKit
import LouisPod

class ApplicationView: BaseView {

    @IBOutlet weak var titleLabel: UILabel!
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
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 16, weight: .semibold),
            .foregroundColor: UIColor(hex: "#94A3B8"),
            .kern: 1.2  // 👈 tăng khoảng cách giữa các ký tự
        ]
        let attributedText = NSAttributedString(string: "Ứng dụng".uppercased(), attributes: attributes)
        titleLabel.attributedText = attributedText
    }
}
