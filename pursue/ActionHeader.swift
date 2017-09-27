//
//  ActionHeader.swift
//  pursue
//
//  Created by Jaylen Sanders on 9/23/17.
//  Copyright © 2017 Glory. All rights reserved.
//

import UIKit

class ActionHeader: PursuitHeader {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        pageTitle.text = "Pursuits"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
