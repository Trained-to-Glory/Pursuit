//
//  SkillsCells.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class SkillsRow: UICollectionViewCell {
    
    let skillPicture : UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.image = #imageLiteral(resourceName: "trucks")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let skillCreatedLabel : UILabel = {
       let label = UILabel()
        label.text = "SAT 17 SEP 12:00"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .lightGray
        return label
    }()
    
    let skillCreator : UILabel = {
        let label = UILabel()
        label.text = "Old Truman Brewery"
        label.font = UIFont.systemFont(ofSize: 12, weight: 25)
        return label
    }()
    
    let titleForSkill : UILabel = {
       let label = UILabel()
        label.text = "Tokyo Home Show Autumn 2017"
        label.font = UIFont.systemFont(ofSize: 16, weight: 25)
        return label
    }()
    
    let skillsLabel : UILabel = {
       let label = UILabel()
        label.text = "Skills"
        label.font = UIFont.systemFont(ofSize: 24, weight: 25)
        label.textColor = .black
        return label
    }()
    
    let skillsImageRow : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    func setupView(){
        addSubview(skillPicture)
        
        addSubview(skillCreatedLabel)
        addSubview(titleForSkill)
        addSubview(skillCreator)
        
        skillPicture.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 90, height: 100)
        
        skillCreatedLabel.anchor(top: skillPicture.topAnchor, left: skillPicture.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 4, paddingLeft: 14, paddingBottom: 0, paddingRight: 0, width: 0, height: 10)
        titleForSkill.anchor(top: skillCreatedLabel.bottomAnchor, left: skillCreatedLabel.leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 50)
        skillCreator.anchor(top: titleForSkill.bottomAnchor, left: titleForSkill.leftAnchor, bottom: skillPicture.bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 0, height: 20)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
