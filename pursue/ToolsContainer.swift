//
//  ToolsContainer.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ToolsContainer: SkillsContainer {
    
    let toolsCellId = "toolsCellId"
    
    override func setupView() {
        super.setupView()
        backgroundColor = .clear
        skillsCollection.register(ToolsRow.self, forCellWithReuseIdentifier: toolsCellId)
        skillsCollection.delegate = self
        skillsCollection.dataSource = self
        skillsLabel.text = "Tools"
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: toolsCellId, for: indexPath) as! ToolsRow
        return cell
    }
    
}
