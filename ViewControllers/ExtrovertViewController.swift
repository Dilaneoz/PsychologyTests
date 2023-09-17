//
//  ExtrovertViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.06.2023.
//

import UIKit

class ExtrovertViewController: UIViewController {
    

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    
    var currentQuestion: Int = 0
    var currentAnswerButton1: Int = 0
    var currentAnswerButton2: Int = 0
    var currentAnswerButton3: Int = 0
    var questionIndex: Int = 0
    var selectedValue: Int = 0
    var totalScore: Int = 0
    var result: String = ""
    var headerResult: String = ""
    var previousValue = 0
    var image: UIImage?
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    let questions = ["To prepare for a night out...","Being around people makes me feel...","When given a choice between working as part of a team or working as a group, I would prefer to...","What's your idea of the perfect date?","During parties or social gatherings, I tend to...","When I'm dealing with a personal problem, I prefer to...","On the topic of public speaking...","People describe you as thoughtful, reserved, and soft-spoken.","I enjoy meeting new people.","How to do you prefer to communicate?"]
    let answersButton1 = ["I buy the latest outfit, tell my friends, then dance the night away.","Like I'm alive!","Work with as many people as possible.","A live concert in Central Park.","Talk to as many people as I can. I've been called a social butterfly.","Talk about it with others and enlist their help.","I enjoy it. All eyes on me!","Never, I am a very talkative person.","Yes, I can make a friend at the super market.","In person. Tell me to my face."]
    let answersButton2 = ["Call a few of my closest friends to see if they will be there.","Inspired. I feed off of others' energy but there are times when I'd rather be alone.","Work as part of a small group.","Dinner and a Broadway show.","Spend time with a few people that I know. It's about quality not quanitity.","Call my closest friend and discuss on the phone.","It's not my strongest suit but I'll do it if I have to.","Sometimes, but I can also be quite talkative with my inner circle.","Sometimes, but I have to be in the right mood.","Call me first then we'll meet up if you need to elaborate."]
    let answersButton3 = ["Prepare? My friends have to drag me out most nights.","A bit exhausted. Being around others can be draining.","Work by myself.","Wine and Netflix.","Keep to myself. You can find me by the punch bowl.","Solve it on my own. I tend to be more private.","I get super nervous. I'd rather write 5 research papers first.","All the time, I am a very quiet and mellow person.","It's very hard to meet new people.","Can't you just text or email me? Who calls people these days?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button1.tag = 1
        button2.tag = 2
        button3.tag = 3
        
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        
        button1.titleLabel?.font = UIFont(name: "AmericanTypewriter", size: 17)
        button2.titleLabel?.font = UIFont(name: "AmericanTypewriter", size: 17)
        button3.titleLabel?.font = UIFont(name: "AmericanTypewriter", size: 17)
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
        
        if sender.tag == 1 {
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
    }
    
    
    func calculateDepression(){
        
        totalScore = selectedValue
        
        if totalScore < 16 {
            image = UIImage(named: "extrovert1")!
            headerResult = "You are an Extrovert"
            result = "Your results indicate that you are more of an extrovert. \n \n Extroverts tend to be quite outgoing and talkative. They enjoy spending time with other people, and feel energized in social situations. \n \n Oftentimes, extroverts like being the focus of attention. As an extrovert, people probably describe you as friendly and outgoing. \n \n You love meeting new people and have no problem making new friends. Spending time with others leaves you feeling energized and inspired."

        }else if totalScore < 22 {
            image = UIImage(named: "ambivert")
            headerResult = "You are an Ambivert"
            result = "Your results indicate that you have both extrovert and introvert qualities. Extroverts tend to be quite outgoing and talkative. Introverts tend to enjoy solitude and spending quiet time alone. \n \n Since your results indicate that you are somewhere in the middle of the extrovert/introvert continuum, you tend to have qualities that fit into both ends of the spectrum. \n \n You like spending time with others, but you also enjoy having time to yourself. You might not mind being the center of attention once in a while, but you probably prefer to stay out of the spotlight on a day-to-day basis."
        }else{
            image = UIImage(named: "introvert")
            headerResult = "You are an Introvert"
            result = "Your results indicate that you are more of an introvert. Introverts tend to enjoy solitude and spending quiet time alone. They expend energy in social situations and prefer not to be the center of attention. \n \n In general, people might describe you as quiet. You probably prefer to spend time alone or with a small group of close friends and family. You may dislike busy social events such as parties and often feel drained after spending a lot of time around people you do not know well. \n \n In addition to understanding the main characteristics of introverts, it can be helpful to understand more about dating an introvert and how to distinguish between introversion and shyness."
        }
        print(totalScore)
    }
    
    
    func nextQuestion(){
        
        if questionIndex >= questions.count {
            performSegue(withIdentifier: "toExtrovertResultVC", sender: nil)
            return
        }
            
        navigationItem.title = "Question \(questionIndex + 1)"
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        progressView.setProgress(totalProgress, animated: true)
        
        questionLabel.text = questions[currentQuestion]
        currentQuestion += 1
        
        button1.setTitle(answersButton1[currentAnswerButton1], for: .normal)
        currentAnswerButton1 += 1
        
        button2.setTitle(answersButton2[currentAnswerButton2], for: .normal)
        currentAnswerButton2 += 1
        
        button3.setTitle(answersButton3[currentAnswerButton3], for: .normal)
        currentAnswerButton3 += 1
        
        print(questionIndex)
        questionIndex += 1
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toExtrovertResultVC" {
            
            let resultViewController = segue.destination as! ExtrovertResultViewController
            resultViewController.valueOfDepression = result
            resultViewController.headerValueOfDepression = headerResult
            resultViewController.imageResult = image
        }
    }
    
    
}
