//
//  ExploreHeaderRow.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/22/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ExploreHeaderRow: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let cellId = "cellId"
    
    let pageTitle : UILabel = {
        let label = UILabel()
        label.text = "Explore"
        label.font = UIFont.systemFont(ofSize: 28, weight: 25)
        label.textColor = .black
        return label
    }()
    
    let titleUnderline : UIView = {
       let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let pageTitleDetail : UILabel = {
        let label = UILabel()
        label.text = "See what people are pursuing"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        return label
    }()
    
    let exploreChatIcon : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "send2").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let exploreCameraIcon : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(#imageLiteral(resourceName: "camera3").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let pursuitImageRow : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
 
    fileprivate func setupPageTitle(){
        addSubview(pageTitle)
        addSubview(pageTitleDetail)
        pageTitle.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 14, paddingLeft: 32, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        pageTitleDetail.anchor(top: pageTitle.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 8, paddingLeft: 32, paddingBottom: 0, paddingRight: 0, width: 0, height: 15)
        
        addSubview(exploreChatIcon)
        addSubview(exploreCameraIcon)
        
        exploreChatIcon.anchor(top: pageTitle.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24, width: 0, height: 20)
        exploreCameraIcon.anchor(top: exploreChatIcon.topAnchor, left: nil, bottom: exploreChatIcon.bottomAnchor, right: exploreChatIcon.leftAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 30, width: 25, height: 0)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = pursuitImageRow.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ExploreImageRow
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(24, 0, 0, 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.height - 120, height: frame.height - 115)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        setupPageTitle()
        
        pursuitImageRow.register(ExploreImageRow.self, forCellWithReuseIdentifier: cellId)
        
        pursuitImageRow.delegate = self
        pursuitImageRow.dataSource = self
        
        addSubview(pursuitImageRow)
        
        pursuitImageRow.anchor(top: pageTitleDetail.bottomAnchor, left: pageTitleDetail.leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
