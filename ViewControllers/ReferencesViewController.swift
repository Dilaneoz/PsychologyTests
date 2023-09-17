//
//  ReferencesViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 8.07.2023.
//

import UIKit

class ReferencesViewController: UIViewController {
    
    @IBOutlet weak var reference1: UIButton!
    @IBOutlet weak var reference2: UIButton!
    @IBOutlet weak var reference3: UIButton!
    @IBOutlet weak var reference4: UIButton!
    @IBOutlet weak var reference5: UIButton!
    @IBOutlet weak var reference6: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reference1.addTarget(self, action: #selector(openLink1), for: .touchUpInside)
        reference2.addTarget(self, action: #selector(openLink2), for: .touchUpInside)
        reference3.addTarget(self, action: #selector(openLink3), for: .touchUpInside)
        reference4.addTarget(self, action: #selector(openLink4), for: .touchUpInside)
        reference5.addTarget(self, action: #selector(openLink5), for: .touchUpInside)
        reference6.addTarget(self, action: #selector(openLink6), for: .touchUpInside)
        
        reference1.layer.cornerRadius = 5
        reference2.layer.cornerRadius = 5
        reference3.layer.cornerRadius = 5
        reference4.layer.cornerRadius = 5
        reference5.layer.cornerRadius = 5
        reference6.layer.cornerRadius = 5
        
    }
    
    @objc func openLink1() {
        
        if let urlToOpen = URL(string: "https://www.tandfonline.com/doi/abs/10.1080/00221546.1945.11774186") {
            
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
        }
    }
        
    @objc func openLink2() {
        
        if let urlToOpen = URL(string: "https://pubmed.ncbi.nlm.nih.gov/22335214/") {
            
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
        }
    }
    
    @objc func openLink3() {
        
        if let urlToOpen = URL(string: "https://bmcpsychiatry.biomedcentral.com/articles/10.1186/1471-244X-8-10") {
            
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
        }
    }
        
    @objc func openLink4() {
        
        if let urlToOpen = URL(string: "https://pubmed.ncbi.nlm.nih.gov/18388841/") {
            
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
        }
    }
    
    @objc func openLink5() {
        
        if let urlToOpen = URL(string: "https://www.simonandschuster.com/books/The-Everything-Psychology-Book/Kendra-Cherry/Everything/9781440506918") {
            
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
        }
    }
    
    @objc func openLink6() {
        
        if let urlToOpen = URL(string: "https://www.scribd.com/document/570241662/Goldberg-s-Bipolar-Screening-Scale") {
            
            UIApplication.shared.open(urlToOpen, options: [:]) { (done) in
                print("Link was opened successfully")
            }
        }
    }
   

}
