//
//  ExploreController.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/11/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit
import OAuthSwift


class ExploreController: UICollectionViewController, UICollectionViewDelegateFlowLayout, ExploreHeaderDelegate {
    
    let headerId = "headerId"
    let skillsId = "skillsId"
    let toolsId = "toolsId"
    let leaderId = "leaderId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(ExploreHeaderRow.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView?.register(SkillsList.self, forCellWithReuseIdentifier: skillsId)
        collectionView?.register(ToolsList.self, forCellWithReuseIdentifier: toolsId)
        collectionView?.register(LeaderList.self, forCellWithReuseIdentifier: leaderId)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Setup Views
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.width + 20)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! ExploreHeaderRow
        header.delegate = self
        return header
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : SkillsList
        
        if indexPath.item == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: skillsId, for: indexPath) as! SkillsList
        } else if indexPath.item == 1 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: toolsId, for: indexPath) as! ToolsList
        } else {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: leaderId, for: indexPath) as! LeaderList
            _ = UIEdgeInsetsMake(0, 0, 0, 0)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return  UIEdgeInsetsMake(32, 20, 0, 0)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: view.frame.width, height: view.frame.width)
    }
    
    func handleCamera(for cell: ExploreHeaderRow) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        alertController.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (_) in
            let cameraController = CameraController()
            self.present(cameraController, animated: true, completion: nil)
        }))
        
        alertController.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (_) in
            let layout = UICollectionViewFlowLayout()
            let photoSelectorController = PhotoSelectorController(collectionViewLayout: layout)
            let navController = UINavigationController(rootViewController: photoSelectorController)
            self.present(navController, animated: true, completion: nil)
            
        }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    func handleMessage(for cell: ExploreHeaderRow) {
        let messageController = MessagesController()
        let navController = UINavigationController(rootViewController: messageController)
        present(navController, animated: true, completion: nil)
    }

}
