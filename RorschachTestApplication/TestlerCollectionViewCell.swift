//
//  TestlerCollectionViewCell.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 22.02.2023.
//

import UIKit

class TestlerCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var testsImageView: UIImageView!
    @IBOutlet weak var testNameLabel: UILabel!
    
    func setup (test : Test) {
        
        testsImageView.image = UIImage(named: test.image)
        testNameLabel.text = test.title
        
    }
    
    
    
    
    
}
