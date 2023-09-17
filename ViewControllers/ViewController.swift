//
//  ViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.01.2023.
//

import UIKit
//import AppTrackingTransparency

class ViewController: UIViewController {
        
    @IBOutlet weak var baslikLabel: UIImageView!
    @IBOutlet weak var testButton: UIButton!
    
    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        if #available(iOS 16, *) {
            
            ATTrackingManager.requestTrackingAuthorization { status in // uygulama açıldığında kullanıcıdan bilgilerini paylaşması için izin isteyen bir kutucuk çıkar
            
            if status == .authorized {
            }else if status == .denied {
                    
                }
            }
        }
        */
        testButton.layer.cornerRadius = 20
     //   testButton.titleLabel?.font = UIFont.init(name: "AmericanTypewriter", size: 18)
        
     //   baslikLabel.image = UIImage(named: NSLocalizedString("IMAGE", comment: ""))
    //    let button = NSLocalizedString("TESTBUTONU", comment: "")
    //    testButton.setTitle(button, for: .normal)
        navigationItem.hidesBackButton = true
    }


    @IBAction func testeBaslaButtonTiklandi(_ sender: Any) {
        
    }
    
    
    
    
}

