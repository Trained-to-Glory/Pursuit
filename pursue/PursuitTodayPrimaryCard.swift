//
//  PursuitCards.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/25/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class PursuitTodayPrimaryCard: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let titleLabel : UILabel = {
       let label = UILabel()
        label.text = "Today"
        label.font = UIFont.systemFont(ofSize: 18, weight: 25)
        label.textColor = .black
        return label
    }()
    
    let titleDetailLabel : UILabel = {
       let label = UILabel()
        label.text = "Monday, October 2"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    let catchUpLabel : UILabel = {
        let label = UILabel()
        label.text = "Catch Me Up!"
        label.textColor = .green
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let exerciseCard : CardView = {
       let view = CardView()
        view.backgroundColor = .green
        return view
    }()
    
    let cardImage : UIImageView = {
       let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = UIImage(named: "4a6ed813870319.5627984277e3f")
        iv.layer.cornerRadius = 8
        return iv
    }()
    
    let execeriseLabel : UILabel = {
        let label = UILabel()
        label.text = "Draw"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 24, weight: 25)
        return label
    }()
    
    let execeriseCompletedLabel : UILabel = {
        let label = UILabel()
        label.text = "123,456 completions"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let execeriseTimeLabel : UILabel = {
        let label = UILabel()
        label.text = "01:23:45"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let profilePicture : UIImageView = {
       let iv = UIImageView()
        iv.layer.cornerRadius = 30
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "tumblr_nbj794TLRx1r46py4o1_1280")
        return iv
    }()
    
    let toolCollectionView : UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.isScrollEnabled = true
        return collectionView
    }()
    
    let cellId = "cellId"
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ToolsCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width / 2, height: 50)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func setupView(){
        backgroundColor = .clear
        
        addSubview(titleLabel)
        addSubview(titleDetailLabel)
        addSubview(catchUpLabel)
        addSubview(exerciseCard)
        
        exerciseCard.addSubview(cardImage)
        exerciseCard.addSubview(execeriseLabel)
        exerciseCard.addSubview(execeriseCompletedLabel)
        exerciseCard.addSubview(execeriseTimeLabel)
        
        addSubview(profilePicture)
        addSubview(toolCollectionView)
        
        titleLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 32, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        titleDetailLabel.anchor(top: titleLabel.bottomAnchor, left: titleLabel.leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 20)
        catchUpLabel.anchor(top: titleLabel.topAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 32, width: 90, height: 20)
        exerciseCard.anchor(top: titleDetailLabel.bottomAnchor, left: titleDetailLabel.leftAnchor, bottom: nil, right: catchUpLabel.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 200)
        cardImage.anchor(top: exerciseCard.topAnchor, left: exerciseCard.leftAnchor, bottom: exerciseCard.bottomAnchor, right: exerciseCard.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        execeriseLabel.anchor(top: cardImage.topAnchor, left: cardImage.leftAnchor, bottom: nil, right: cardImage.rightAnchor, paddingTop: 14, paddingLeft: 16, paddingBottom: 0, paddingRight: 0, width: 0, height: 30)
        execeriseCompletedLabel.anchor(top: nil, left: execeriseLabel.leftAnchor, bottom: exerciseCard.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 14, paddingRight: 0, width: 140, height: 20)
        execeriseTimeLabel.anchor(top: execeriseCompletedLabel.topAnchor, left: nil, bottom: nil, right: exerciseCard.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 80, height: 20)
        
        profilePicture.anchor(top: exerciseCard.bottomAnchor, left: exerciseCard.leftAnchor, bottom: nil, right: nil, paddingTop: 32, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 60, height: 60)
        toolCollectionView.anchor(top: profilePicture.bottomAnchor, left: profilePicture.leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 12, width: 0, height: 60)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        toolCollectionView.delegate = self
        toolCollectionView.dataSource = self
        
        toolCollectionView.register(ToolsCell.self, forCellWithReuseIdentifier: cellId)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
