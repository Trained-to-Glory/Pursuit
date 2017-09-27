//
//  HomeCustomRow.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/26/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class HomeCustomRow: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let cardInfoLabel : UILabel = {
        let label = UILabel()
        label.text = "Samuel L. Jackson"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: 25)
        return label
    }()
    
    let viewsNumber : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 42, weight: 25)
        label.numberOfLines = 0
        label.text = "36"
        label.textColor = .white
        return label
    }()
    
    let viewsLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "Videos"
        label.textColor = .white
        return label
    }()
    
    let exerciseCard : CardView = {
        let view = CardView()
        view.backgroundColor = .green
        return view
    }()
    
    let postImage : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "samuel-l")
        iv.layer.cornerRadius = 8
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let topPictureImageView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : UICollectionViewCell
        
        switch indexPath.item {
        case 0:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: topCellId, for: indexPath) as! HomeTopCell
            return cell
        case 1:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: bottomCellId, for: indexPath) as! HomeBottomCell
            return cell
        default:
            assert(false, "Unexpected element cell")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 8, 8, 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (frame.width / 2) - 30, height: (frame.height / 2.5))
    }
    
    let topCellId = "topCellId"
    let bottomCellId = "bottomCellId"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .yellow
        addSubview(exerciseCard)
        exerciseCard.addSubview(postImage)
        exerciseCard.addSubview(cardInfoLabel)
        exerciseCard.addSubview(viewsNumber)
        exerciseCard.addSubview(viewsLabel)
        addSubview(topPictureImageView)
        
        topPictureImageView.dataSource = self
        topPictureImageView.delegate = self

        topPictureImageView.register(HomeTopCell.self, forCellWithReuseIdentifier: topCellId)
        topPictureImageView.register(HomeBottomCell.self, forCellWithReuseIdentifier: bottomCellId)
        
        exerciseCard.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 32, paddingBottom: 0, paddingRight: 8, width: (frame.width / 2) - 25, height: 0)
        postImage.anchor(top: exerciseCard.topAnchor, left: exerciseCard.leftAnchor, bottom: exerciseCard.bottomAnchor, right: exerciseCard.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        cardInfoLabel.anchor(top: exerciseCard.topAnchor, left: exerciseCard.leftAnchor, bottom: nil, right: exerciseCard.rightAnchor, paddingTop: 12, paddingLeft: 16, paddingBottom: 0, paddingRight: 8, width: 0, height: 15)
        viewsNumber.anchor(top: cardInfoLabel.bottomAnchor, left: cardInfoLabel.leftAnchor, bottom: nil, right: cardInfoLabel.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 12, width: 0, height: 45)
        viewsLabel.anchor(top: viewsNumber.bottomAnchor, left: viewsNumber.leftAnchor, bottom: nil, right: viewsNumber.rightAnchor, paddingTop: 4, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 50, height: 15)
        topPictureImageView.anchor(top: topAnchor, left: exerciseCard.rightAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 32, width: 0, height: 0)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
