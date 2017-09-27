//
//  SelectSkillsCell.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class SkillsContainer: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let skillsCellId = "skillsCellId"
    
    let skillPicture : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let skillsCollection : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    let skillsLabel : UILabel = {
        let label = UILabel()
        label.text = "Skills"
        label.font = UIFont.systemFont(ofSize: 24, weight: 25)
        label.textColor = .black
        return label
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width, height: frame.height / 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = skillsCollection.dequeueReusableCell(withReuseIdentifier: skillsCellId, for: indexPath) as! SkillsRow
        return cell
    }
    
    func setupView(){
        backgroundColor = .clear
        
        addSubview(skillsCollection)
        addSubview(skillsLabel)
        
        skillsCollection.delegate = self
        skillsCollection.dataSource = self
        
        skillsCollection.register(SkillsRow.self, forCellWithReuseIdentifier: skillsCellId)
        skillsLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 16, paddingBottom: 32, paddingRight: 0, width: 0, height: 30)
        skillsCollection.anchor(top: skillsLabel.bottomAnchor, left: skillsLabel.leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
