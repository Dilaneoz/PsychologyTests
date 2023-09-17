//
//  QuestionData.swift
//  RorschachTestApplication
//
//  Created by Dilan Öztürk on 19.01.2023.
//

import Foundation

// rorschach
struct Question {
    
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
}

enum ResponseType {
    case bir, iki, uc, dort, bes, alti, yedi, sekiz, dokuz, on
}

struct Answer {
    
    var text: String
    var type: PersonalityType
    
}

enum PersonalityType: String {
   
    case normal = "You are healthy and balanced!", kaygi = "You are anxious and angry!", sizofreni = "You show signs of schizophrenia!", bagimlilik = "You show addictive behavior!", ilgi = "You need for emotional connection with others", iliskilerdeSorun = "You have problems in your relationships!", saldirganlik = "You show signs of aggressive behavior!", benmerkezcilik = "You have a egocentric behavior characteristic!"
    
    var definiton: String {
        switch self {
        case .normal:
            return "You have normal, healthy thinking processes and harmonise with society. You have high self-esteem and focus."
        case .kaygi:
            return "You show signs of anxiety. This causes a feeling of fear and panic. It may be good to look at the things the positive side."
        case .sizofreni:
            return "This leads to changes and breakdowns in the behavior of the person depending on the disorders that occur in perception and thinking abilities. These breakdowns cause the person to establish a new world for himself, independent of the outside world, away from interpersonal relationships and reality."
        case .bagimlilik:
            return "In behavioral addiction, the person feels relief and peace by doing a certain behavior, in other words, he receives a reward. The rewarding feature of the behavior lead up to the improvement of addiction to this behavior over time. Remember that the most important element in the fight against addiction is awareness!"
        case .ilgi:
            return "You want to establish emotional bonds with others. There may be many reasons behind this desire. This behavior, which causes you to have expectation, can harm you even if you are not aware of it. It would be helpful to get to the bottom of the problem."
        case .iliskilerdeSorun:
            return "There may be problems in your social/romantic relationships with parents, friends, or others. These problems among people have a social and personal change and improvement function and are not always considered as a negative situation. However, do not forget the importance of communication in the process of meeting mutual needs and expectations and come to a solution."
        case .saldirganlik:
            return "Aggression, which starts especially in childhood and adolescence and can cause greater disorders in later ages if not taken care of; may be originated by genetic, environmental or socio-cultural factors. You may get psychotherapy to cope with this."
        case .benmerkezcilik:
            return "You base everything on yourself and put your own ideas ahead. Self-centered thinking is a situation that is expected in childhood but should be avoided in adulthood. To avoid this, you can increase your knowledge and practice about empathy, which is the opposite of egocentrism."
        }
    }
    
}



