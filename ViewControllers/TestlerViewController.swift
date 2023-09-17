//
//  TestlerViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 22.02.2023.
//

import UIKit

class TestlerViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return setData.data.dataGet().count // Test struct ıyla nasıl bağlantı kuruyor?
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testsCollectionViewCell", for: indexPath) as? TestlerCollectionViewCell{
            
            let nextTest = setData.data.dataGet() [indexPath.row]
            
            cell.testsImageView.image = UIImage(named: nextTest.image)
            cell.testNameLabel.text = nextTest.title
            
            return cell
            
        }else{
            
            return TestlerCollectionViewCell()
        }
    }
        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  
        self.performSegue(withIdentifier: "toTests\(indexPath.item + 1)", sender: self)
        
        }
        
}
    
    extension TestlerViewController : UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            return CGSize(width: 180, height: 200)
            
        }
        
    }
    

