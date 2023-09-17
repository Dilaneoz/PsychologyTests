//
//  AnxietyViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.06.2023.
//

import UIKit

class AnxietyViewController: UIViewController {
    
    
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
    
    let questions = ["Feeling nervous, anxious or on edge.","Not being able to stop or control worrying.","Worrying too much about different things.","Trouble relaxing.","Being so restless that it is hard to sit still.","Becoming easily annoyed or irritable.","Feeling afraid, as if something awful might happen."]
    
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
        
        previousValue = selectedValue 
        
        calculateDepression()
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
            result = "Your anxiety severity is minimal."
        }else if totalScore < 10 {
            result = "Your anxiety severity is mild."
        }else if totalScore < 15 {
            result = "Your anxiety severity is moderate."
        }else{
            result = "Your anxiety severity is severe."
        }
        print(totalScore)
    }
    
    
    func nextQuestion(){
        
        if questionIndex >= questions.count {
            performSegue(withIdentifier: "toAnxietyResultVC", sender: nil)
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
        
        if segue.identifier == "toAnxietyResultVC" {
            
            let resultViewController = segue.destination as! AnxietyResultViewController
            resultViewController.valueOfDepression = result
        }
    }
    
    
}
