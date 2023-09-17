//
//  ResultsViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.01.2023.
//

import UIKit
import GoogleMobileAds

class ResultsViewController: UIViewController, GADFullScreenContentDelegate
{
    
    private var interstitial: GADInterstitialAd?

    @IBOutlet weak var sonucBaslikLabel: UILabel!
    @IBOutlet weak var sonucLabel: UILabel!
    
    var responses : [Answer]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ProfileButtonTapped))
        
        createAd()
        
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        /*
        sonucBaslikLabel.text = NSLocalizedString("SONUCBASLİK1", comment: "")
        sonucBaslikLabel.text = NSLocalizedString("SONUCBASLİK2", comment: "")
        sonucBaslikLabel.text = NSLocalizedString("SONUCBASLİK3", comment: "")
        sonucBaslikLabel.text = NSLocalizedString("SONUCBASLİK4", comment: "")
        sonucBaslikLabel.text = NSLocalizedString("SONUCBASLİK5", comment: "")
        sonucBaslikLabel.text = NSLocalizedString("SONUCBASLİK6", comment: "")
        sonucBaslikLabel.text = NSLocalizedString("SONUCBASLİK7", comment: "")
        sonucBaslikLabel.text = NSLocalizedString("SONUCBASLİK8", comment: "")
        sonucLabel.text = NSLocalizedString("SONUCTANIM1", comment: "")
        sonucLabel.text = NSLocalizedString("SONUCTANIM2", comment: "")
        sonucLabel.text = NSLocalizedString("SONUCTANIM3", comment: "")
        sonucLabel.text = NSLocalizedString("SONUCTANIM4", comment: "")
        sonucLabel.text = NSLocalizedString("SONUCTANIM5", comment: "")
        sonucLabel.text = NSLocalizedString("SONUCTANIM6", comment: "")
        sonucLabel.text = NSLocalizedString("SONUCTANIM7", comment: "")
        sonucLabel.text = NSLocalizedString("SONUCTANIM8", comment: "")
        let paylasButonu = NSLocalizedString("PAYLASBUTTON", comment: "")
        paylasButton.setTitle(paylasButonu, for: .normal)
        let sorumlulukReddiButonu = NSLocalizedString("SORUMLULUKREDDİBUTTON", comment: "")
        sorumlulukReddiButton.setTitle(sorumlulukReddiButonu, for: .normal)*/

    }
    
    
    @IBAction func paylasButtonPressed(_ sender: Any) {
        
        let activityVC = UIActivityViewController(activityItems: [self.sonucBaslikLabel.text!, self.sonucLabel.text!], applicationActivities: nil)
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
    
    func calculatePersonalityResult() {
        
        var frequencyOfAnswers: [PersonalityType: Int ] = [:]
        let responseTypes = responses.map{ $0.type }
        
        for response in responseTypes {
            
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
            
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) -> Bool in
            
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        sonucBaslikLabel.text = " \(mostCommonAnswer.rawValue)"
        sonucLabel.text = mostCommonAnswer.definiton
    }
   
    private func createAd() {
        
        let request = GADRequest()
        
        if #available(iOS 16, *) {
        
        GADInterstitialAd.load(withAdUnitID:"ca-app-pub-2179352615092602/3924208929",
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
