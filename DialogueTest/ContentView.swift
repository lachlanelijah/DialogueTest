//
//  ContentView.swift
//  DialogueTest
//
//  Created by Lachlan Atack on 16/3/2024.
//

import SwiftUI

struct ContentView: View {
    let dialogue = Dialogue(
        round1Question1: "What topic do you want to talk about?",
        
        round1Question1Response1: "Music",
        round1Question1Response2: "Sport",
        round1Question1Response3: "Exercise",
        
        round2Question1: "Let's talk about music. What's your favourite genre?",
        round2Question1Response1: "Metal",
        round2Question1Response2: "Rock",
        round2Question1Response3: "Pop",
        
        round2Question2: "Let's talk about sport. Your favourite?",
        round2Question2Response4: "NRL",
        round2Question2Response5: "AFL",
        round2Question2Response6: "F1",
        
        round2Question3: "Let's talk about exercise. Your favourite?",
        round2Question3Response7: "Running",
        round2Question3Response8: "Swimming",
        round2Question3Response9: "Walking",
        
        round3Question1: "Your favourite metal band?",
        round3Question1Response1: "Opeth",
        round3Question1Response2: "BTBAM",
        round3Question1Response3: "Tool",
        
        round3Question2: "Your favourite rock band?",
        round3Question2Response4: "KGATLW",
        round3Question2Response5: "Radiohead",
        round3Question2Response6: "GYBE",
        
        round3Question3: "Your favourite pop artist?",
        round3Question3Response7: "Tay Tay",
        round3Question3Response8: "Noah Kahan",
        round3Question3Response9: "Harry Styles",
        
        round3Question4: "Favourite NRL team?",
        round3Question4Response10: "Parra",
        round3Question4Response11: "Easts",
        round3Question4Response12: "Souths",
        
        round3Question5: "Favourite AFL team?",
        round3Question5Response13: "Sydney",
        round3Question5Response14: "Pies",
        round3Question5Response15: "GWS",
        
        round3Question6: "Favourite F1 driver?",
        round3Question6Response16: "Piastri",
        round3Question6Response17: "Ricciardo",
        round3Question6Response18: "Sainz",
        
        round3Question7: "Where do you run?",
        round3Question7Response19: "Running track",
        round3Question7Response20: "Treadmill",
        round3Question7Response21: "Countryside",
        
        round3Question8: "Where do you swim?",
        round3Question8Response22: "Beach",
        round3Question8Response23: "Pool",
        round3Question8Response24: "Ocean bath",
        
        round3Question9: "Where do you walk?",
        round3Question9Response25: "Neighbourhood",
        round3Question9Response26: "Park",
        round3Question9Response27: "Backyard",
        
        round4Question1: "Blackwater Park is awesome",
        round4Question2: "Colors is great",
        round4Question3: "Lateralus is superb",
        round4Question4: "PDA slaps",
        round4Question5: "I love In Rainbows",
        round4Question6: "I love F#",
        round4Question7: "Eras!",
        round4Question8: "Sticks",
        round4Question9: "Sushi",
        round4Question10: "Parra Power",
        round4Question11: "Easts to Win",
        round4Question12: "No teeth",
        round4Question13: "Up the bloods",
        round4Question14: "Flagpies",
        round4Question15: "Orange team",
        round4Question16: "Aussie Aussie Aussie",
        round4Question17: "Used to be good",
        round4Question18: "No seat for him yet",
        round4Question19: "What an athlete",
        round4Question20: "Boring",
        round4Question21: "Scenic",
        round4Question22: "Watch out for sharks",
        round4Question23: "Fancy",
        round4Question24: "Gross",
        round4Question25: "Me too",
        round4Question26: "Watch out for leaves",
        round4Question27: "How??")
    
    @State private var button1 = "1"
    @State private var button2 = "2"
    @State private var button3 = "3"
    @State private var question = ""
    @State private var round = 1
    @State private var lastAnswer = 0
    var body: some View {
        Spacer()
        Text(question)
            .font(.title)
            .fontWeight(.black)
            .padding()
            .multilineTextAlignment(.center)
            .foregroundStyle(.orange)
            .frame(height: 500)
        Spacer()
        VStack {
            //button 1
            Button(action: {
                round += 1
                print("It's round \(round)")
                
                switch round {
                case 2:
                    lastAnswer = 1
                    question = dialogue.round2Question1
                    button1 = dialogue.round2Question1Response1
                    button2 = dialogue.round2Question1Response2
                    button3 = dialogue.round2Question1Response3
                case 3:
                    if (lastAnswer == 1) {
                        lastAnswer = 1
                        question = dialogue.round3Question1
                        button1 = dialogue.round3Question1Response1
                        button2 = dialogue.round3Question1Response2
                        button3 = dialogue.round3Question1Response3
                    } else if (lastAnswer == 2) {
                        lastAnswer = 4
                        question = dialogue.round3Question4
                        button1 = dialogue.round3Question4Response10
                        button2 = dialogue.round3Question4Response11
                        button3 = dialogue.round3Question4Response12
                    } else if (lastAnswer == 3) {
                        lastAnswer = 7
                        question = dialogue.round3Question7
                        button1 = dialogue.round3Question7Response19
                        button2 = dialogue.round3Question7Response20
                        button3 = dialogue.round3Question7Response21
                    }
                case 4:
                    switch lastAnswer {
                    case 1:
                        question = dialogue.round4Question1
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 2:
                        question = dialogue.round4Question4
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 3:
                        question = dialogue.round4Question7
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 4:
                        question = dialogue.round4Question10
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 5:
                        question = dialogue.round4Question13
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 6:
                        question = dialogue.round4Question16
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 7:
                        question = dialogue.round4Question19
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 8:
                        question = dialogue.round4Question22
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 9:
                        question = dialogue.round4Question25
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    default:
                        question = ""
                    }
                default:
                    question = ""
                }
            }, label: {
                Text(button1)
            })
            
            //button 2
            Button(action: {
                round += 1
                print("It's round \(round)")
                
                switch round {
                case 2:
                    lastAnswer = 2
                    question = dialogue.round2Question2
                    button1 = dialogue.round2Question2Response4
                    button2 = dialogue.round2Question2Response5
                    button3 = dialogue.round2Question2Response6
                case 3:
                    if (lastAnswer == 1) {
                        lastAnswer = 2
                        question = dialogue.round3Question2
                        button1 = dialogue.round3Question2Response4
                        button2 = dialogue.round3Question2Response5
                        button3 = dialogue.round3Question2Response6
                    } else if (lastAnswer == 2) {
                        lastAnswer = 5
                        question = dialogue.round3Question5
                        button1 = dialogue.round3Question5Response13
                        button2 = dialogue.round3Question5Response14
                        button3 = dialogue.round3Question5Response15
                    } else if (lastAnswer == 3) {
                        lastAnswer = 8
                        question = dialogue.round3Question8
                        button1 = dialogue.round3Question8Response22
                        button2 = dialogue.round3Question8Response23
                        button3 = dialogue.round3Question8Response24
                    }
                case 4:
                    switch lastAnswer {
                    case 1:
                        question = dialogue.round4Question2
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 2:
                        question = dialogue.round4Question5
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 3:
                        question = dialogue.round4Question8
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 4:
                        question = dialogue.round4Question11
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 5:
                        question = dialogue.round4Question14
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 6:
                        question = dialogue.round4Question17
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 7:
                        question = dialogue.round4Question20
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 8:
                        question = dialogue.round4Question23
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 9:
                        question = dialogue.round4Question26
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    default:
                        question = ""
                    }
                default:
                    question = ""
                }
            }, label: {
                Text(button2)
            })
            
            //button 3
            Button(action: {
                round += 1
                print("It's round \(round)")
                
                switch round {
                case 2:
                    lastAnswer = 3
                    question = dialogue.round2Question3
                    button1 = dialogue.round2Question3Response7
                    button2 = dialogue.round2Question3Response8
                    button3 = dialogue.round2Question3Response9
                case 3:
                    if (lastAnswer == 1) {
                        lastAnswer = 3
                        question = dialogue.round3Question3
                        button1 = dialogue.round3Question3Response7
                        button2 = dialogue.round3Question3Response8
                        button3 = dialogue.round3Question3Response9
                    } else if (lastAnswer == 2) {
                        lastAnswer = 6
                        question = dialogue.round3Question6
                        button1 = dialogue.round3Question6Response16
                        button2 = dialogue.round3Question6Response17
                        button3 = dialogue.round3Question6Response18
                    } else if (lastAnswer == 3) {
                        lastAnswer = 9
                        question = dialogue.round3Question9
                        button1 = dialogue.round3Question9Response25
                        button2 = dialogue.round3Question9Response26
                        button3 = dialogue.round3Question9Response27
                    }
                case 4:
                    switch lastAnswer {
                    case 1:
                        question = dialogue.round4Question3
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 2:
                        question = dialogue.round4Question6
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 3:
                        question = dialogue.round4Question9
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 4:
                        question = dialogue.round4Question12
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 5:
                        question = dialogue.round4Question15
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 6:
                        question = dialogue.round4Question18
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 7:
                        question = dialogue.round4Question21
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 8:
                        question = dialogue.round4Question24
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    case 9:
                        question = dialogue.round4Question27
                        button1 = ""
                        button2 = ""
                        button3 = ""
                    default:
                        question = ""
                    }
                default:
                    question = ""
                }
            }, label: {
                Text(button3)
            })
        }
        .font(.title2)
        .buttonStyle(.borderedProminent)
        .onAppear() {
            question = dialogue.round1Question1
            button1 = dialogue.round1Question1Response1
            button2 = dialogue.round1Question1Response2
            button3 = dialogue.round1Question1Response3
        }
    }
}

#Preview {
    ContentView()
}
