//
//  ExtrovertResultViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 30.06.2023.
//

import UIKit
import GoogleMobileAds

class ExtrovertResultViewController: UIViewController, GADFullScreenContentDelegate
{
    
    private var interstitial: GADInterstitialAd?
    
    @IBOutlet weak var resultHeaderLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var valueOfDepression: String = ""
    var headerValueOfDepression: String = ""
    var imageResult: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        imageView.image = imageResult
        resultLabel.text = "\(valueOfDepression)"
        resultHeaderLabel.text = "\(headerValueOfDepression)"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ProfileButtonTapped))
        
        createAd()
    }
    

    @IBAction func shareButtonClicked(_ sender: Any) {
        
        let activityVC = UIActivityViewController(activityItems: [self.resultHeaderLabel.text!, self.resultLabel.text!], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true)
        
    }
    
    @objc func ProfileButtonTapped() {
        
        if interstitial != nil {
            interstitial!.present(fromRootViewController: self)
          } else {
            print("Ad wasn't ready")
          }
        print("Button Tapped")
        //If you want pass data while segue you can use prepare segue method
        
        let mainStoarybord = UIStoryboard(name: "Main", bundle: nil)
        
        let destinationViewController = mainStoarybord.instantiateViewController(withIdentifier: "home") as! ViewController
                
        self.navigationController?.pushViewController(destinationViewController, animated: true)
       }
    
    
    private func createAd() {
        
        let request = GADRequest()
        
        if #available(iOS 16, *) {
        
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-2179352615092602/2211354775",
                                    request: request,
                          completionHandler: { [self] ad, error in
                            if let error = error {
                              print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                              return
                            }
                            interstitial = ad
            interstitial?.fullScreenContentDelegate = self
                          }
                    )
            
        }
    }
    
}
