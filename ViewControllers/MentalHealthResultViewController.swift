//
//  MentalHealthResultViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 27.06.2023.
//

import UIKit
import GoogleMobileAds

class MentalHealthResultViewController: UIViewController, GADFullScreenContentDelegate
{
    
    private var interstitial: GADInterstitialAd?

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultHeaderLabel: UILabel!
    
    var valueOfDepression: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        resultLabel.text = "\(valueOfDepression)"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ProfileButtonTapped))
        
        createAd()
    }
    

    @IBAction func shareButtonPressed(_ sender: Any) {
        
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
        
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-2179352615092602/7324080650",
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
