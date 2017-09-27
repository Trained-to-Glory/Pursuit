//
//  LeaderList.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class LeaderList: SkillsList {

    let leaderId = "leaderId"
    
    override func setupView() {
        super.setupView()
        skillsCollection.register(LeaderContainer.self, forCellWithReuseIdentifier: leaderId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: leaderId, for: indexPath) as! LeaderContainer
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width, height: frame.width + 60)
    }
    
}
