//
//  MentalHealthEntryViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.07.2023.
//

import UIKit
import GoogleMobileAds

class MentalHealthEntryViewController: UIViewController, GADFullScreenContentDelegate {

    private var interstitial: GADInterstitialAd?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createAd()
    }
    
    private func createAd() {
        
        let request = GADRequest()
        
        if #available(iOS 16, *) {
        
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-2179352615092602/3612066358",
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
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        if interstitial != nil {
            interstitial!.present(fromRootViewController: self)
          } else {
            print("Entry Ad wasn't ready")
          }
    }
    
}
