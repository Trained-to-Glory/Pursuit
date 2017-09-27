//
//  ToolsList.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ToolsList: SkillsList {
    let toolsContainerId = "toolsRowId"
    
    override func setupView() {
        super.setupView()
        skillsCollection.register(ToolsContainer.self, forCellWithReuseIdentifier: toolsContainerId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: toolsContainerId, for: indexPath) as! ToolsContainer
        return cell
    }
    
}
