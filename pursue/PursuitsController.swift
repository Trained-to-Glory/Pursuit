//
//  PursuitsController.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/25/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class PursuitsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
   
    let cellId = "cellId"
    let headerId = "headerId"
    let pursuitSecondaryId = "pursuitSecondaryId"
    let pursuitPrimaryId = "pursuitPrimaryId"
    let tomorrowId = "tomorrowId"
    let pursuitLaterId = "pursuitLaterId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        
        collectionView?.register(PursuitTodayPrimaryCard.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(PursuitTodaySecondaryCard.self, forCellWithReuseIdentifier: pursuitSecondaryId)
        collectionView?.register(PursuitTommorrowPrimaryCard.self, forCellWithReuseIdentifier: pursuitPrimaryId)
        collectionView?.register(PursuitLater.self, forCellWithReuseIdentifier: pursuitLaterId)
        collectionView?.register(PursuitTommorrowSecondaryCard.self, forCellWithReuseIdentifier: tomorrowId)
        collectionView?.register(PursuitHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
        self.navigationController?.isNavigationBarHidden = true

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : PursuitTodayPrimaryCard
        
        switch indexPath.item {
        case 0:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PursuitTodayPrimaryCard
            return cell
            
        case 1:
             cell = collectionView.dequeueReusableCell(withReuseIdentifier: pursuitSecondaryId, for: indexPath) as! PursuitTodaySecondaryCard
             return cell
            
        case 2:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: pursuitPrimaryId, for: indexPath) as! PursuitTommorrowPrimaryCard
            return cell
        case 3:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: tomorrowId, for: indexPath) as! PursuitTommorrowSecondaryCard
            return cell
        case 4:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: pursuitLaterId, for: indexPath) as! PursuitLater
            return cell
        default:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: pursuitSecondaryId, for: indexPath) as! PursuitTodaySecondaryCard
            return cell
        }
        
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch indexPath.item {
        case 0:
            return CGSize(width: view.frame.width, height: view.frame.width + 100)
        case 2:
            return CGSize(width: view.frame.width, height: 270)
        default:
            return CGSize(width: view.frame.width, height: 260)
        }
        
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: (view.frame.width / 8) + 30)
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! PursuitHeader
        return header
    }
}
