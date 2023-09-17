//
//  RorschachEntryViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.07.2023.
//

import UIKit
import GoogleMobileAds

// info da GADApplicationIdentifier a yazılacak gerçek id -> ca-app-pub-2179352615092602~7038747145

// test id -> ca-app-pub-3940256099942544/4411468910
// 1. ca-app-pub-2179352615092602/4979290518
// 2. ca-app-pub-2179352615092602/3924208929
// 3. ca-app-pub-2179352615092602/8172459598
// 4. ca-app-pub-2179352615092602/6429801381
// 5. ca-app-pub-2179352615092602/3612066358
// 6. ca-app-pub-2179352615092602/7324080650
// 7. ca-app-pub-2179352615092602/9567100617
// 8. ca-app-pub-2179352615092602/5029089805
// 9. ca-app-pub-2179352615092602/7463681459
// 10. ca-app-pub-2179352615092602/2211354775
// 11. ca-app-pub-2179352615092602/7870875560
// 12. ca-app-pub-2179352615092602/5053140534

class RorschachEntryViewController: UIViewController, GADFullScreenContentDelegate {
    
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
        
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-2179352615092602/4979290518",
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
    
    //  reklam detayları. yazmak zorunlu değil
    /// Tells the delegate that the ad failed to present full screen content.
      func ad(_ ad: GADFullScreenPresentingAd, didFailToPresentFullScreenContentWithError error: Error) {
        print("Ad did fail to present full screen content.")
      }

      /// Tells the delegate that the ad will present full screen content.
      func adWillPresentFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("Ad will present full screen content.")
      }

      /// Tells the delegate that the ad dismissed full screen content.
      func adDidDismissFullScreenContent(_ ad: GADFullScreenPresentingAd) {
        print("Ad did dismiss full screen content.")
      }

}
