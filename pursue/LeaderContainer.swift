//
//  LeaderContainer.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class LeaderContainer: SkillsContainer {
    let leaderId = "leaderId"
    
    override func setupView() {
        super.setupView()
        skillsLabel.text = "Leaders"
        skillsCollection.register(LeaderRow.self, forCellWithReuseIdentifier: leaderId)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 18, 0, 0)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: leaderId, for: indexPath) as! LeaderRow
        return cell
    }
}
