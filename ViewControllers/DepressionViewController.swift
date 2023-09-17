//
//  DepressionViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.06.2023.
//

import UIKit

class DepressionViewController: UIViewController {
    
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    var currentQuestion: Int = 0
    var questionIndex: Int = 0
    var selectedValue: Int = 0
    var totalScore: Int = 0
    var result: String = ""
    var previousValue = 0 // her sorudan önce önceki seçilen değeri takip et
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    
    let questions = ["I have little interest or pleasure in doing things.", "I am feeling down, depressed or hopeless.", "I have trouble falling or staying asleep or sleeping too much.", "I am feeling tired or I have little energy.", "I have poor appetite or overeating.", "I am feeling bad about myself - or I feel like I am a failure or I have let myself or my family down.", "I have trouble concentrating on things such as reading the newspaper or watching television.", "I am moving or sleeping so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual.", "I have thoughts that I would be better off dead or of hurting myself in some way."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.tag = 0
        button2.tag = 1
        button3.tag = 2
        button4.tag = 3
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        nextQuestion()
    }
    
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        
        previousValue = selectedValue // her next e basıldığında önceki değeri seçili değere ata
        
        calculateDepression()
        nextQuestion()
        resetButtonColors()
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        selectedValue = previousValue // if the user taps multiple buttons for the same answer, reset the previous taps this way. butona her tıklandığında seçili değeri önceki değere ata
        
        if sender.tag == 0 {
            selectedValue += 0
        }else if sender.tag == 1 {
            selectedValue += 1
        }else if sender.tag == 2 {
            selectedValue += 2
        }else if sender.tag == 3 {
            selectedValue += 3
        }
        
        resetButtonColors()
        sender.backgroundColor = .systemMint
    }
    
    func resetButtonColors() {
        button1.backgroundColor = .systemCyan
        button2.backgroundColor = .systemCyan
        button3.backgroundColor = .systemCyan
        button4.backgroundColor = .systemCyan
    }
    
    
    func calculateDepression(){
        
        totalScore = selectedValue
 
        if totalScore < 5 {
            result = "Your depression severity is minimal."
        }else if totalScore < 10 {
            result = "Your depression severity is mild."
        }else if totalScore < 15 {
            result = "Your depression severity is moderate."
        }else if totalScore < 20 {
            result = "Your depression severity is moderately severe."
        }else{
            result = "Your depression severity is severe."
        }
        print(totalScore)
    }
    
    
    func nextQuestion(){
        // son soru geçerliyse aşağıdaki kodları yaz diyoruz
        //valid question? sanity check
        if questionIndex >= questions.count {
            performSegue(withIdentifier: "toDepressionResultVC", sender: nil)
            return
        }
            
        navigationItem.title = "Question \(questionIndex + 1)"
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
        
        questionLabel.text = questions[currentQuestion]
        currentQuestion += 1
        
        print(questionIndex)
        questionIndex += 1
        // kontrole geçerse aşağıdaki kodların çalışmasını istiyoruz. guardian code
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDepressionResultVC" {
            
            let resultViewController = segue.destination as! DepressionResultViewController
            resultViewController.valueOfDepression = result
        }
    }
    
    
    
}
