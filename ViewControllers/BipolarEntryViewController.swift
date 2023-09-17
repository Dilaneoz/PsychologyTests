//
//  BipolarEntryViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.07.2023.
//

import UIKit
import GoogleMobileAds

class BipolarEntryViewController: UIViewController, GADFullScreenContentDelegate {
    
    private var interstitial: GADInterstitialAd?

    override func viewDidLoad() {
        super.viewDidLoad()

        createAd()
    }
    

    @IBAction func buttonClicked(_ sender: Any) {
        
        if interstitial != nil {
            interstitial!.present(fromRootViewController: self)
          } else {
            print("Entry Ad wasn't ready")
          }
    }
    
    private func createAd() {
        
        let request = GADRequest()
        
        if #available(iOS 16, *) {
        
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-2179352615092602/7870875560",
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
