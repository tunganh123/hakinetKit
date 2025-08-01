//
//  HomeVC + func.swift
//  HakinetKid
//
//  Created by Louis on 1/8/25.
//

import Foundation

extension HomeViewController {
    func calculateCollectionViewHeight() -> CGFloat {
        let numberOfSections = 2
        let width = collectionView.bounds.width
        var totalHeight: CGFloat = 0

        // Kích thước header cho mỗi section
        let headerHeight: CGFloat = 44

        // Khoảng cách giữa các dòng
        let lineSpacing: CGFloat = 8 // hoặc collectionViewFlowLayout.minimumLineSpacing

        // Section 0: 8 item, mỗi item cao 50
        let itemsInSection0 = 8
        let itemHeight0: CGFloat = 60
        totalHeight += headerHeight + (CGFloat(itemsInSection0) * itemHeight0)
        totalHeight += CGFloat(itemsInSection0 - 1) * lineSpacing

        // Section 1: 4 item, mỗi item cao 98
        let itemsInSection1 = 4
        let itemHeight1: CGFloat = 98
        totalHeight += headerHeight + (CGFloat(itemsInSection1) * itemHeight1)
        totalHeight += CGFloat(itemsInSection1 - 1) * lineSpacing

        // Nếu có sectionInset:
        let sectionSpacing: CGFloat = 16 // padding top + bottom mỗi section, nếu có
        totalHeight += CGFloat(numberOfSections) * sectionSpacing

        return totalHeight
    }
}
