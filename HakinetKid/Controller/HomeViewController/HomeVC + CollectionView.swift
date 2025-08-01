//
//  HomeVC + CollectionView.swift
//  HakinetKid
//
//  Created by Louis on 1/8/25.
//

import Foundation
import UIKit

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 8
        }
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withClass: HistoryCellHome.self, for: indexPath)
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withClass: RewardCellHome.self, for: indexPath)
            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        // Phần thưởng thời gian
        let width = collectionView.bounds.width
        return CGSize(width: width, height: indexPath.section == 0 ? 60 : 98)
    }

    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView
    {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                         withReuseIdentifier: SectionHeaderView.identifier,
                                                                         for: indexPath) as! SectionHeaderView
            let title = indexPath.section == 0 ? "LỊCH SỬ HOẠT ĐỘNG" : "PHẦN THƯỞNG THỜI GIAN"
            header.configure(title: title)
            return header
        }
        return UICollectionReusableView()
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForFooterInSection section: Int) -> CGSize
    {
        if section == 0 {
            let numberOfItems = self.collectionView(collectionView, numberOfItemsInSection: section)
            let height = CGFloat(numberOfItems) * 60 + 8 * CGFloat(numberOfItems - 1) // height + spacing
            return CGSize(width: collectionView.bounds.width, height: height)
        }
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize
    {
        return CGSize(width: collectionView.bounds.width, height: 44)
    }
}
