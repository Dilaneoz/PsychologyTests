//
//  BipolarViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.06.2023.
//

import UIKit

class BipolarViewController: UIViewController {

    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    var currentQuestion: Int = 0
    var questionIndex: Int = 0
    var selectedValue: Int = 0
    var totalScore: Int = 0
    var result: String = ""
    var previousValue = 0
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    let questions = ["At times I am much more talkative or speak much faster than usual.","There have been times when I was much more active or did many more things than usual.","I get into moods where I feel very speeded up or irritable.","There have been times when I have felt both high (elated) and low (depressed) at the same time.","At times I have been much more interested in sex than usual.","My self-confidence ranges from great selfdoubt to equally great overconfidence.","There have been GREAT variations in the quantity or quality of my work.","For no apparent reason I sometimes have been VERY angry or hostile.","I have periods of mental dullness and other periods of very creative thinking.","At times I am greatly interested in being with people and at other times I just want to be left alone with my thoughts.","I have had periods of great optimism and other periods of equally great pessimism.","I have had periods of tearfulness and crying and other times when I laugh and joke excessively."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button1.tag = 0
        button2.tag = 1
        button3.tag = 2
        button4.tag = 3
        button5.tag = 4
        button6.tag = 5
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        button5.layer.cornerRadius = 5
        button6.layer.cornerRadius = 5
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        nextQuestion()
    }

    @IBAction func nextButtonClicked(_ sender: Any) {
        
        previousValue = selectedValue
        
        calculateMentalHealth()
        nextQuestion()
        resetButtonColors()
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        selectedValue = previousValue
        
        if sender.tag == 0 {
            selectedValue += 0
        }else if sender.tag == 1 {
            selectedValue += 1
        }else if sender.tag == 2 {
            selectedValue += 2
        }else if sender.tag == 3 {
            selectedValue += 3
        }else if sender.tag == 4 {
            selectedValue += 4
        }else if sender.tag == 5 {
            selectedValue += 5
        }
        
        resetButtonColors()
        sender.backgroundColor = .systemMint
    }
    
    func resetButtonColors() {
        button1.backgroundColor = .systemCyan
        button2.backgroundColor = .systemCyan
        button3.backgroundColor = .systemCyan
        button4.backgroundColor = .systemCyan
        button5.backgroundColor = .systemCyan
        button6.backgroundColor = .systemCyan
    }
    
    func calculateMentalHealth(){
        
        totalScore = selectedValue
 
        if totalScore < 16 {
            result = "Bipolar unlikely."
        }else if totalScore < 25 {
            result = "You may have either major depression or a disorder in the bipolar spectrum."
        }else{
            result = "You have a high probability of having a bipolar spectrum disorder."
        }
        print(totalScore)
    }
    
    func nextQuestion(){
        
        if questionIndex >= questions.count {
            performSegue(withIdentifier: "toBipolarResultVC", sender: nil)
            return
        }
            
        navigationItem.title = "Question \(questionIndex + 1)"
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        progressView.setProgress(totalProgress, animated: true)
        
        questionLabel.text = questions[currentQuestion]
        currentQuestion += 1
        
        print(questionIndex)
        questionIndex += 1
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toBipolarResultVC" {
            
            let resultViewController = segue.destination as! BipolarResultViewController
            resultViewController.valueOfDepression = result
        }
    }
    

}
