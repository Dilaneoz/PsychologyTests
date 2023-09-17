//
//  Test.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 23.02.2023.
//

import Foundation
import UIKit

struct Test {
    
    let title : String
    let image : String
    
    init(title: String, image: String) {
        self.title = title
        self.image = image
    }
    
}

class setData {
    static let data = setData()
    
    let tests = [
        Test(title: "Rorschach Test", image: "rorschach"),
        Test(title: "Depression Test", image: "depression"),
        Test(title: "Mental Health Test", image: "mental"),
        Test(title: "Anxiety Test", image: "anxiety"),
        Test(title: "Extroversion Test", image: "extrovert"),
        Test(title: "Bipolar Disorder Test", image: "bipolar"),
        Test(title: "Personality Test", image: "personality"),
        Test(title: "Career Personality Test", image: "career"),
        Test(title: "Sex Personality Test", image: "sex"),
        Test(title: "Love Test", image: "love"),
        Test(title: "Self Confidence Test", image: "self-confidence"),
        Test(title: "Anger Test", image: "anger")
    ]
    
    func dataGet() -> [Test]{
        
        return tests
    }
    
}
