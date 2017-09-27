//
//  PursuitHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/25/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class PursuitHeader: ExploreHeaderRow {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(pageTitle)
        pageTitle.text = "Design"
        pageTitleDetail.isHidden = true
        pursuitImageRow.isHidden = true
        backgroundColor = .clear

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
