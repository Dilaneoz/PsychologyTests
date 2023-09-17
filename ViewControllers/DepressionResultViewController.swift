//
//  DepressionResultViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 21.06.2023.
//


import UIKit
import GoogleMobileAds

class DepressionResultViewController: UIViewController, GADFullScreenContentDelegate
{
    
    private var interstitial: GADInterstitialAd?
    
    @IBOutlet weak var resultHeaderLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var valueOfDepression: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ProfileButtonTapped))
        
        navigationItem.hidesBackButton = true
        
        resultLabel.text = "\(valueOfDepression)"
        
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
            print("Result Ad wasn't ready")
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
        
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-2179352615092602/6429801381",
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

class customView: UIView {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    func setup(){
        
        self.layer.cornerRadius = 10
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 10
        self.layer.shadowColor = UIColor.systemBlue.cgColor
     
    }

}
