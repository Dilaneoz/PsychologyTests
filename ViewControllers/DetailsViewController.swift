//
//  DetailsViewController.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.01.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var soruLabel: UILabel!
    
    @IBOutlet weak var soru1StackView: UIStackView!
    @IBOutlet weak var soru1button1: UIButton!
    @IBOutlet weak var soru1button2: UIButton!
    @IBOutlet weak var soru1button3: UIButton!
    @IBOutlet weak var soru1button4: UIButton!
    @IBOutlet weak var soru1button5: UIButton!
    @IBOutlet weak var soru1button6: UIButton!
    @IBOutlet weak var soru1button7: UIButton!
    @IBOutlet weak var soru1button8: UIButton!
    
    @IBOutlet weak var soru2StackView: UIStackView!
    @IBOutlet weak var soru2button1: UIButton!
    @IBOutlet weak var soru2button2: UIButton!
    @IBOutlet weak var soru2button3: UIButton!
    @IBOutlet weak var soru2button4: UIButton!
    @IBOutlet weak var soru2button5: UIButton!
    @IBOutlet weak var soru2button6: UIButton!
    @IBOutlet weak var soru2button7: UIButton!
    @IBOutlet weak var soru2button8: UIButton!
    
    @IBOutlet weak var soru3StackView: UIStackView!
    @IBOutlet weak var soru3button1: UIButton!
    @IBOutlet weak var soru3button2: UIButton!
    @IBOutlet weak var soru3button3: UIButton!
    @IBOutlet weak var soru3button4: UIButton!
    @IBOutlet weak var soru3button5: UIButton!
    @IBOutlet weak var soru3button6: UIButton!
    
    @IBOutlet weak var soru4StackView: UIStackView!
    @IBOutlet weak var soru4button1: UIButton!
    @IBOutlet weak var soru4button2: UIButton!
    @IBOutlet weak var soru4button3: UIButton!
    @IBOutlet weak var soru4button4: UIButton!
    @IBOutlet weak var soru4button5: UIButton!
    @IBOutlet weak var soru4button6: UIButton!
    
    @IBOutlet weak var soru5StackView: UIStackView!
    @IBOutlet weak var soru5button1: UIButton!
    @IBOutlet weak var soru5button2: UIButton!
    @IBOutlet weak var soru5button3: UIButton!
    @IBOutlet weak var soru5button4: UIButton!
    @IBOutlet weak var soru5button5: UIButton!
    @IBOutlet weak var soru5button6: UIButton!
    @IBOutlet weak var soru5button7: UIButton!
    @IBOutlet weak var soru5button8: UIButton!
    
    @IBOutlet weak var soru6StackView: UIStackView!
    @IBOutlet weak var soru6button1: UIButton!
    @IBOutlet weak var soru6button2: UIButton!
    @IBOutlet weak var soru6button3: UIButton!
    @IBOutlet weak var soru6button4: UIButton!
    @IBOutlet weak var soru6button5: UIButton!
    @IBOutlet weak var soru6button6: UIButton!
    @IBOutlet weak var soru6button7: UIButton!
    @IBOutlet weak var soru6button8: UIButton!

    @IBOutlet weak var soru7StackView: UIStackView!
    @IBOutlet weak var soru7button1: UIButton!
    @IBOutlet weak var soru7button2: UIButton!
    @IBOutlet weak var soru7button3: UIButton!
    @IBOutlet weak var soru7button4: UIButton!
    @IBOutlet weak var soru7button5: UIButton!
    @IBOutlet weak var soru7button6: UIButton!
    @IBOutlet weak var soru7button7: UIButton!
    @IBOutlet weak var soru7button8: UIButton!
    
    @IBOutlet weak var soru8StackView: UIStackView!
    @IBOutlet weak var soru8button1: UIButton!
    @IBOutlet weak var soru8button2: UIButton!
    @IBOutlet weak var soru8button3: UIButton!
    @IBOutlet weak var soru8button4: UIButton!
    @IBOutlet weak var soru8button5: UIButton!
    @IBOutlet weak var soru8button6: UIButton!
    
    @IBOutlet weak var soru9StackView: UIStackView!
    @IBOutlet weak var soru9button1: UIButton!
    @IBOutlet weak var soru9button2: UIButton!
    @IBOutlet weak var soru9button3: UIButton!
    @IBOutlet weak var soru9button4: UIButton!
    @IBOutlet weak var soru9button5: UIButton!
    @IBOutlet weak var soru9button6: UIButton!
    
    @IBOutlet weak var soru10StackView: UIStackView!
    @IBOutlet weak var soru10button1: UIButton!
    @IBOutlet weak var soru10button2: UIButton!
    @IBOutlet weak var soru10button3: UIButton!
    @IBOutlet weak var soru10button4: UIButton!
    @IBOutlet weak var soru10button5: UIButton!
    
    var questions: [Question] = [
        
        Question(text: "What do you see in the image?", type: .bir,
                 answers: [
                    Answer(text: "A bat, a butterfly or a moth", type: .normal),
                    Answer(text: "Two people who attack a third in the middle", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "Animal face", type: .iliskilerdeSorun),
                    Answer(text: "Battleship", type: .saldirganlik),
                    Answer(text: "Two people or animals attacking a woman in the middle", type: .benmerkezcilik)
                 ]),
        
        Question(text: "What do you see in the image?", type: .iki,
                 answers: [
                    Answer(text: "Two human figures facing each other, women or goblins", type: .normal),
                    Answer(text: "A face of a cat or a bear with blood on the face and around the mouth", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "I don't see any animals or people", type: .iliskilerdeSorun),
                    Answer(text: "Two fighting bears - blood everywhere", type: .saldirganlik),
                    Answer(text: "Two black clouds meet", type: .benmerkezcilik)
                 ]),
        
        Question(text: "What do you see in the image?", type: .uc,
                 answers: [
                    Answer(text: "Two human figures facing each other, surrounded by flowers, orchids and a butterfly", type: .normal),
                    Answer(text: "Two women", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "A non-human image", type: .iliskilerdeSorun)
                 ]),
        
        Question(text: "What do you see in the image?", type: .dort,
                 answers: [
                    Answer(text: "A man in a big coat or an animal skin", type: .normal),
                    Answer(text: "An attacking dragon, bear, monster or gorilla", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "A giant with a huge penis", type: .iliskilerdeSorun)
                 ]),
        
        Question(text: "What do you see in the image?", type: .bes,
                 answers: [
                    Answer(text: "A bat, a swallow or a butterfly", type: .normal),
                    Answer(text: "I had a tough time seeing anything", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "Crocodile heads in the tips of the wings", type: .iliskilerdeSorun),
                    Answer(text: "None of these, a very different view", type: .saldirganlik),
                    Answer(text: "Two animals that bang their heads together", type: .benmerkezcilik)
                 ]),
        
        Question(text: "What do you see in the image?", type: .alti,
                 answers: [
                    Answer(text: "Female or male genitalia", type: .normal),
                    Answer(text: "A mountain difficult to climb", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "None", type: .iliskilerdeSorun),
                    Answer(text: "Run over cat on a highway", type: .saldirganlik),
                    Answer(text: "A ship or an U-boat on the surface of calm water with its mirror image", type: .benmerkezcilik)
                 ]),
        
        Question(text: "What do you see in the image?", type: .yedi,
                 answers: [
                    Answer(text: "Two women", type: .normal),
                    Answer(text: "Thunderclouds", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "Two witches, gossip bitches, fighting women or scheming women", type: .iliskilerdeSorun),
                    Answer(text: "An oil lamp or the like in the white area between the two girls", type: .saldirganlik),
                    Answer(text: "A little girl who sees herself in a mirror", type: .benmerkezcilik)
                 ]),
        
        Question(text: "What do you see in the image?", type: .sekiz,
                 answers: [
                    Answer(text: "Two four-legged animals on each side of the figure", type: .normal),
                    Answer(text: "Two animals fleeing for their lives to avoid the flames of hell below", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "Panther on a piece of rock, the scenery reflected in a river", type: .iliskilerdeSorun)
                 ]),
        
        Question(text: "What do you see in the image?", type: .dokuz,
                 answers: [
                    Answer(text: "A rocket launching with the flames below, the black smoke higher up and the slender rocket in the middle", type: .normal),
                    Answer(text: "The bright green mushroom cloud, which is enclosed by the yellow in the center area above", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi),
                    Answer(text: "None", type: .iliskilerdeSorun)
                 ]),
        
        Question(text: "What do you see in the image?", type: .on,
                 answers: [
                    Answer(text: "Blue crabs or spiders, grey crabs and shrimps, orange fruits, green caterpillars, red sea cucumbers and brown mice", type: .normal),
                    Answer(text: "Collapses, explosions or a volcano eruption", type: .kaygi),
                    Answer(text: "Any sexual content", type: .sizofreni),
                    Answer(text: "Food", type: .bagimlilik),
                    Answer(text: "A rough/smooth/hairy surface", type: .ilgi)
                 ])

    ]
    
    var questionIndex = 0
    
    var answersChosen : [Answer] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
   //     UIButton.appearance().titleLabel?.font = UIFont.systemFont(ofSize: 25) // çalışmıyor
        
        updateUI()
        
        soruLabel.text = NSLocalizedString("What do you see in the image?", comment: "")
        
        /*     let gecilen_ikililer = [(3,7),(3,8),(4,7),(4,8),(8,7),(8,8),(9,7),(9,8),(10,6),(10,7),(10,8) ]
        
        for soru_numarasi in 1...10 {
            for buton_numarasi in 1...8 {
                
                if gecilen_ikililer.filter({ $0 == (soru_numarasi, buton_numarasi) }).first != nil {
                    continue
                }                
                    
                let button_name = "soru" + soru_numarasi.codingKey.stringValue + "button" + buton_numarasi.codingKey.stringValue
                let localized_name = "SORU" + soru_numarasi.codingKey.stringValue + "BUTTON" + buton_numarasi.codingKey.stringValue
                let button_obj: UIButton = value(forKey: button_name) as! UIButton
                let localized_str = NSLocalizedString(localized_name, comment: "")
                button_obj.setTitle(localized_str, for: .normal)
            }
        } */

        soru1button1.layer.cornerRadius = 5
        soru1button2.layer.cornerRadius = 5
        soru1button3.layer.cornerRadius = 5
        soru1button4.layer.cornerRadius = 5
        soru1button5.layer.cornerRadius = 5
        soru1button6.layer.cornerRadius = 5
        soru1button7.layer.cornerRadius = 5
        soru1button8.layer.cornerRadius = 5
        soru2button1.layer.cornerRadius = 5
        soru2button2.layer.cornerRadius = 5
        soru2button3.layer.cornerRadius = 5
        soru2button4.layer.cornerRadius = 5
        soru2button5.layer.cornerRadius = 5
        soru2button6.layer.cornerRadius = 5
        soru2button7.layer.cornerRadius = 5
        soru2button8.layer.cornerRadius = 5
        soru3button1.layer.cornerRadius = 5
        soru3button2.layer.cornerRadius = 5
        soru3button3.layer.cornerRadius = 5
        soru3button4.layer.cornerRadius = 5
        soru3button5.layer.cornerRadius = 5
        soru3button6.layer.cornerRadius = 5
        soru4button1.layer.cornerRadius = 5
        soru4button2.layer.cornerRadius = 5
        soru4button3.layer.cornerRadius = 5
        soru4button4.layer.cornerRadius = 5
        soru4button5.layer.cornerRadius = 5
        soru4button6.layer.cornerRadius = 5
        soru5button1.layer.cornerRadius = 5
        soru5button2.layer.cornerRadius = 5
        soru5button3.layer.cornerRadius = 5
        soru5button4.layer.cornerRadius = 5
        soru5button5.layer.cornerRadius = 5
        soru5button6.layer.cornerRadius = 5
        soru5button7.layer.cornerRadius = 5
        soru5button8.layer.cornerRadius = 5
        soru6button1.layer.cornerRadius = 5
        soru6button2.layer.cornerRadius = 5
        soru6button3.layer.cornerRadius = 5
        soru6button4.layer.cornerRadius = 5
        soru6button5.layer.cornerRadius = 5
        soru6button6.layer.cornerRadius = 5
        soru6button7.layer.cornerRadius = 5
        soru6button8.layer.cornerRadius = 5
        soru7button1.layer.cornerRadius = 5
        soru7button2.layer.cornerRadius = 5
        soru7button3.layer.cornerRadius = 5
        soru7button4.layer.cornerRadius = 5
        soru7button5.layer.cornerRadius = 5
        soru7button6.layer.cornerRadius = 5
        soru7button7.layer.cornerRadius = 5
        soru7button8.layer.cornerRadius = 5
        soru8button1.layer.cornerRadius = 5
        soru8button2.layer.cornerRadius = 5
        soru8button3.layer.cornerRadius = 5
        soru8button4.layer.cornerRadius = 5
        soru8button5.layer.cornerRadius = 5
        soru8button6.layer.cornerRadius = 5
        soru9button1.layer.cornerRadius = 5
        soru9button2.layer.cornerRadius = 5
        soru9button3.layer.cornerRadius = 5
        soru9button4.layer.cornerRadius = 5
        soru9button5.layer.cornerRadius = 5
        soru9button6.layer.cornerRadius = 5
        soru10button1.layer.cornerRadius = 5
        soru10button2.layer.cornerRadius = 5
        soru10button3.layer.cornerRadius = 5
        soru10button4.layer.cornerRadius = 5
        soru10button5.layer.cornerRadius = 5


        
    }
    
    var counter = 1
    
    func changeImage() {
    
        imageView.image = UIImage(named: counter.description)
    }

    
    func updateUI() {
        
        soru1StackView.isHidden = true
        soru2StackView.isHidden = true
        soru3StackView.isHidden = true
        soru4StackView.isHidden = true
        soru5StackView.isHidden = true
        soru6StackView.isHidden = true
        soru7StackView.isHidden = true
        soru8StackView.isHidden = true
        soru9StackView.isHidden = true
        soru10StackView.isHidden = true
        
        navigationItem.title = "Question \(questionIndex+1)"
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
            
        case .bir:
            updateSoru1StackView(using: currentAnswers)
            changeImage()
        case .iki:
            updateSoru2StackView(using: currentAnswers)
            changeImage()
        case .uc:
            updateSoru3StackView(using: currentAnswers)
            changeImage()
        case .dort:
            updateSoru4StackView(using: currentAnswers)
            changeImage()
        case .bes:
            updateSoru5StackView(using: currentAnswers)
            changeImage()
        case .alti:
            updateSoru6StackView(using: currentAnswers)
            changeImage()
        case .yedi:
            updateSoru7StackView(using: currentAnswers)
            changeImage()
        case .sekiz:
            updateSoru8StackView(using: currentAnswers)
            changeImage()
        case .dokuz:
            updateSoru9StackView(using: currentAnswers)
            changeImage()
        case .on:
            updateSoru10StackView(using: currentAnswers)
            changeImage()
        }
        
    }
    
    func updateSoru1StackView (using answers: [Answer]) {
        soru1StackView.isHidden = false
        soru1button1.setTitle(answers[0].text, for: .normal)
        soru1button2.setTitle(answers[1].text, for: .normal)
        soru1button3.setTitle(answers[2].text, for: .normal)
        soru1button4.setTitle(answers[3].text, for: .normal)
        soru1button5.setTitle(answers[4].text, for: .normal)
        soru1button6.setTitle(answers[5].text, for: .normal)
        soru1button7.setTitle(answers[6].text, for: .normal)
        soru1button8.setTitle(answers[7].text, for: .normal)

    }
    
    func updateSoru2StackView (using answers: [Answer]) {
        soru2StackView.isHidden = false
        soru2button1.setTitle(answers[0].text, for: .normal)
        soru2button2.setTitle(answers[1].text, for: .normal)
        soru2button3.setTitle(answers[2].text, for: .normal)
        soru2button4.setTitle(answers[3].text, for: .normal)
        soru2button5.setTitle(answers[4].text, for: .normal)
        soru2button6.setTitle(answers[5].text, for: .normal)
        soru2button7.setTitle(answers[6].text, for: .normal)
        soru2button8.setTitle(answers[7].text, for: .normal)

    }
    
    func updateSoru3StackView (using answers: [Answer]) {
        soru3StackView.isHidden = false
        soru3button1.setTitle(answers[0].text, for: .normal)
        soru3button2.setTitle(answers[1].text, for: .normal)
        soru3button3.setTitle(answers[2].text, for: .normal)
        soru3button4.setTitle(answers[3].text, for: .normal)
        soru3button5.setTitle(answers[4].text, for: .normal)
        soru3button6.setTitle(answers[5].text, for: .normal)

    }
    
    func updateSoru4StackView (using answers: [Answer]) {
        soru4StackView.isHidden = false
        soru4button1.setTitle(answers[0].text, for: .normal)
        soru4button2.setTitle(answers[1].text, for: .normal)
        soru4button3.setTitle(answers[2].text, for: .normal)
        soru4button4.setTitle(answers[3].text, for: .normal)
        soru4button5.setTitle(answers[4].text, for: .normal)
        soru4button6.setTitle(answers[5].text, for: .normal)

    }
    
    func updateSoru5StackView (using answers: [Answer]) {
        soru5StackView.isHidden = false
        soru5button1.setTitle(answers[0].text, for: .normal)
        soru5button2.setTitle(answers[1].text, for: .normal)
        soru5button3.setTitle(answers[2].text, for: .normal)
        soru5button4.setTitle(answers[3].text, for: .normal)
        soru5button5.setTitle(answers[4].text, for: .normal)
        soru5button6.setTitle(answers[5].text, for: .normal)
        soru5button7.setTitle(answers[6].text, for: .normal)
        soru5button8.setTitle(answers[7].text, for: .normal)

    }
    
    func updateSoru6StackView (using answers: [Answer]) {
        soru6StackView.isHidden = false
        soru6button1.setTitle(answers[0].text, for: .normal)
        soru6button2.setTitle(answers[1].text, for: .normal)
        soru6button3.setTitle(answers[2].text, for: .normal)
        soru6button4.setTitle(answers[3].text, for: .normal)
        soru6button5.setTitle(answers[4].text, for: .normal)
        soru6button6.setTitle(answers[5].text, for: .normal)
        soru6button7.setTitle(answers[6].text, for: .normal)
        soru6button8.setTitle(answers[7].text, for: .normal)

    }
    
    func updateSoru7StackView (using answers: [Answer]) {
        soru7StackView.isHidden = false
        soru7button1.setTitle(answers[0].text, for: .normal)
        soru7button2.setTitle(answers[1].text, for: .normal)
        soru7button3.setTitle(answers[2].text, for: .normal)
        soru7button4.setTitle(answers[3].text, for: .normal)
        soru7button5.setTitle(answers[4].text, for: .normal)
        soru7button6.setTitle(answers[5].text, for: .normal)
        soru7button7.setTitle(answers[6].text, for: .normal)
        soru7button8.setTitle(answers[7].text, for: .normal)

    }
    
    func updateSoru8StackView (using answers: [Answer]) {
        soru8StackView.isHidden = false
        soru8button1.setTitle(answers[0].text, for: .normal)
        soru8button2.setTitle(answers[1].text, for: .normal)
        soru8button3.setTitle(answers[2].text, for: .normal)
        soru8button4.setTitle(answers[3].text, for: .normal)
        soru8button5.setTitle(answers[4].text, for: .normal)
        soru8button6.setTitle(answers[5].text, for: .normal)

    }
    
    func updateSoru9StackView (using answers: [Answer]) {
        soru9StackView.isHidden = false
        soru9button1.setTitle(answers[0].text, for: .normal)
        soru9button2.setTitle(answers[1].text, for: .normal)
        soru9button3.setTitle(answers[2].text, for: .normal)
        soru9button4.setTitle(answers[3].text, for: .normal)
        soru9button5.setTitle(answers[4].text, for: .normal)
        soru9button6.setTitle(answers[5].text, for: .normal)

    }
    
    func updateSoru10StackView (using answers: [Answer]) {
        soru10StackView.isHidden = false
        soru10button1.setTitle(answers[0].text, for: .normal)
        soru10button2.setTitle(answers[1].text, for: .normal)
        soru10button3.setTitle(answers[2].text, for: .normal)
        soru10button4.setTitle(answers[3].text, for: .normal)
        soru10button5.setTitle(answers[4].text, for: .normal)

    }
    
    
    @IBAction func soru1buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru1button1:
            answersChosen.append(currentAnswers[0])
        case soru1button2:
            answersChosen.append(currentAnswers[1])
        case soru1button3:
            answersChosen.append(currentAnswers[2])
        case soru1button4:
            answersChosen.append(currentAnswers[3])
        case soru1button5:
            answersChosen.append(currentAnswers[4])
        case soru1button6:
            answersChosen.append(currentAnswers[5])
        case soru1button7:
            answersChosen.append(currentAnswers[6])
        case soru1button8:
            answersChosen.append(currentAnswers[7])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru2buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru2button1:
            answersChosen.append(currentAnswers[0])
        case soru2button2:
            answersChosen.append(currentAnswers[1])
        case soru2button3:
            answersChosen.append(currentAnswers[2])
        case soru2button4:
            answersChosen.append(currentAnswers[3])
        case soru2button5:
            answersChosen.append(currentAnswers[4])
        case soru2button6:
            answersChosen.append(currentAnswers[5])
        case soru2button7:
            answersChosen.append(currentAnswers[6])
        case soru2button8:
            answersChosen.append(currentAnswers[7])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru3buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru3button1:
            answersChosen.append(currentAnswers[0])
        case soru3button2:
            answersChosen.append(currentAnswers[1])
        case soru3button3:
            answersChosen.append(currentAnswers[2])
        case soru3button4:
            answersChosen.append(currentAnswers[3])
        case soru3button5:
            answersChosen.append(currentAnswers[4])
        case soru3button6:
            answersChosen.append(currentAnswers[5])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru4buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru4button1:
            answersChosen.append(currentAnswers[0])
        case soru4button2:
            answersChosen.append(currentAnswers[1])
        case soru4button3:
            answersChosen.append(currentAnswers[2])
        case soru4button4:
            answersChosen.append(currentAnswers[3])
        case soru4button5:
            answersChosen.append(currentAnswers[4])
        case soru4button6:
            answersChosen.append(currentAnswers[5])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru5buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru5button1:
            answersChosen.append(currentAnswers[0])
        case soru5button2:
            answersChosen.append(currentAnswers[1])
        case soru5button3:
            answersChosen.append(currentAnswers[2])
        case soru5button4:
            answersChosen.append(currentAnswers[3])
        case soru5button5:
            answersChosen.append(currentAnswers[4])
        case soru5button6:
            answersChosen.append(currentAnswers[5])
        case soru5button7:
            answersChosen.append(currentAnswers[6])
        case soru5button8:
            answersChosen.append(currentAnswers[7])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru6buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru6button1:
            answersChosen.append(currentAnswers[0])
        case soru6button2:
            answersChosen.append(currentAnswers[1])
        case soru6button3:
            answersChosen.append(currentAnswers[2])
        case soru6button4:
            answersChosen.append(currentAnswers[3])
        case soru6button5:
            answersChosen.append(currentAnswers[4])
        case soru6button6:
            answersChosen.append(currentAnswers[5])
        case soru6button7:
            answersChosen.append(currentAnswers[6])
        case soru6button8:
            answersChosen.append(currentAnswers[7])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru7buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru7button1:
            answersChosen.append(currentAnswers[0])
        case soru7button2:
            answersChosen.append(currentAnswers[1])
        case soru7button3:
            answersChosen.append(currentAnswers[2])
        case soru7button4:
            answersChosen.append(currentAnswers[3])
        case soru7button5:
            answersChosen.append(currentAnswers[4])
        case soru7button6:
            answersChosen.append(currentAnswers[5])
        case soru7button7:
            answersChosen.append(currentAnswers[6])
        case soru7button8:
            answersChosen.append(currentAnswers[7])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru8buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru8button1:
            answersChosen.append(currentAnswers[0])
        case soru8button2:
            answersChosen.append(currentAnswers[1])
        case soru8button3:
            answersChosen.append(currentAnswers[2])
        case soru8button4:
            answersChosen.append(currentAnswers[3])
        case soru8button5:
            answersChosen.append(currentAnswers[4])
        case soru8button6:
            answersChosen.append(currentAnswers[5])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru9buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru9button1:
            answersChosen.append(currentAnswers[0])
        case soru9button2:
            answersChosen.append(currentAnswers[1])
        case soru9button3:
            answersChosen.append(currentAnswers[2])
        case soru9button4:
            answersChosen.append(currentAnswers[3])
        case soru9button5:
            answersChosen.append(currentAnswers[4])
        case soru9button6:
            answersChosen.append(currentAnswers[5])
        default:
            break
        }
        nextQuestion()
    }
    
    
    @IBAction func soru10buttonTiklandi(_ sender: UIButton) {
        
        counter += 1
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case soru10button1:
            answersChosen.append(currentAnswers[0])
        case soru10button2:
            answersChosen.append(currentAnswers[1])
        case soru10button3:
            answersChosen.append(currentAnswers[2])
        case soru10button4:
            answersChosen.append(currentAnswers[3])
        case soru10button5:
            answersChosen.append(currentAnswers[4])
        default:
            break
        }
        nextQuestion()
    }
    
    
    func nextQuestion(){
        
        questionIndex += 1
        
        if questionIndex < questions.count{
            updateUI()
        }else{
            performSegue(withIdentifier: "toResultsVC", sender: nil)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultsVC" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChosen
        }
    }
    
    
}
