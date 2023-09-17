//
//  MentalHealthViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.06.2023.
//

import UIKit

class MentalHealthViewController: UIViewController {

    
    @IBOutlet weak var mentalHealthProgressView: UIProgressView!
    @IBOutlet weak var mentalHealthQuestionLabel: UILabel!
    
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
    
    let questions = ["During the past month, how much of the time were you a happy person?","How much of the time, during the past month, have you felt calm and peaceful?","How much of the time, during the past month, have you been a very nervous person?","How much of the time, during the past month, have you felt downhearted and blue?"," How much of the time, during the past month, have you felt so down in the dumps that nothing could cheer you up?"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button1.tag = 1
        button2.tag = 2
        button3.tag = 3
        button4.tag = 4
        button5.tag = 5
        button6.tag = 6
        
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
        
        if sender.tag == 1 {
            selectedValue += 1
        }else if sender.tag == 2 {
            selectedValue += 2
        }else if sender.tag == 3 {
            selectedValue += 3
        }else if sender.tag == 4 {
            selectedValue += 4
        }else if sender.tag == 5 {
            selectedValue += 5
        }else if sender.tag == 6 {
            selectedValue += 6
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
 
        if totalScore < 12 {
            result = "You are quite healthy!"
        }else if totalScore < 19 {
            result = "Your mental health severity is minimal."
        }else if totalScore < 21 {
            result = "Your mental health severity is moderate."
        }else{
            result = "Your mental health severity is severe."
        }
        print(totalScore)
    }
    
    
    func nextQuestion(){
        
        if questionIndex >= questions.count {
            performSegue(withIdentifier: "toMentalHealthResultVC", sender: nil)
            return
        }
            
        navigationItem.title = "Question \(questionIndex + 1)"
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        mentalHealthProgressView.setProgress(totalProgress, animated: true)
        
        mentalHealthQuestionLabel.text = questions[currentQuestion]
        currentQuestion += 1
        
        print(questionIndex)
        questionIndex += 1
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toMentalHealthResultVC" {
            
            let resultViewController = segue.destination as! MentalHealthResultViewController
            resultViewController.valueOfDepression = result
        }
    }
    
    
    
}
