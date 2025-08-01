//
//  HomeVC + CollectionView.swift
//  HakinetKid
//
//  Created by Louis on 1/8/25.
//

import Foundation
import UIKit

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 16
        layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)


//        collectionView.register(ActivityCell.self, forCellWithReuseIdentifier: "ActivityCell")
//        collectionView.register(RewardCell.self, forCellWithReuseIdentifier: "RewardCell")

    }

    func loadData() {
//        let activityItems = [
//            ActivityItem(title: "+1 giờ thưởng", subtitle: "Rửa bát", time: "09:40", type: .plusTime),
//            ActivityItem(title: "Yêu cầu bị từ chối", subtitle: nil, time: "09:40", type: .reject),
//            ActivityItem(title: "-30 phút", subtitle: nil, time: "09:40", type: .minusTime)
//        ]
//
//        let rewardItems = [
//            RewardItem(title: "Làm bài tập toán", description: "Nếu làm xong sẽ được xem phim 30 phút", duration: "+30p"),
//            RewardItem(title: "Lau nhà", description: "Nếu lau nhà sạch sẽ thì được xem phim 1 giờ", duration: "+1g")
//        ]
//
//        sections = [
//            .activityHistory(activityItems),
//            .timeRewards(rewardItems)
//        ]
//        collectionView.reloadData()
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        switch sections[section] {
//        case .activityHistory(let items):
//            return items.count
//        case .timeRewards(let rewards):
//            return rewards.count
//        }
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
//        switch sections[indexPath.section] {
//        case .activityHistory(let items):
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActivityCell", for: indexPath) as! ActivityCell
//            cell.configure(with: items[indexPath.item])
//            return cell
//        case .timeRewards(let rewards):
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RewardCell", for: indexPath) as! RewardCell
//            cell.configure(with: rewards[indexPath.item])
//            return cell
//        }
    }
}
