//
//  ViewController.swift
//  QuizGame
//
//  Created by imac on 4/6/17.
//  Copyright © 2017 imac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Answer: UILabel!
    @IBOutlet weak var Next: UIButton!
    var CorrectAnswer = String()
    var numberQuestion = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberQuestion = 1
        RandomQuestion()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func RandomQuestion(){
        
//        var RandomNumber = arc4random() % 5
//        RandomNumber += 1
        //
        Hide()
        switch(numberQuestion){
        case 1:
            Question.text = "Xcode 8.3 run on iOS version?"
            Button1.setTitle("iOS version 10.9", for: UIControlState.normal)
            Button2.setTitle("iOS version 10.10", for: UIControlState.normal)
            Button3.setTitle("iOS version 10.11", for: UIControlState.normal)
            Button4.setTitle("iOS version 10.11.12", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
        case 2:
            Question.text = "What is the compiling virtual machine in Xcode "
            Button1.setTitle("Simulator", for: UIControlState.normal)
            Button2.setTitle("VMWare", for: UIControlState.normal)
            Button3.setTitle("Virtuabox", for: UIControlState.normal)
            Button4.setTitle("Linux", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 3:
            Question.text = "What is the Swift"
            Button1.setTitle("Programming language for iOS", for: UIControlState.normal)
            Button2.setTitle("Monney", for: UIControlState.normal)
            Button3.setTitle("Food", for: UIControlState.normal)
            Button4.setTitle("Bus", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 4:
            Question.text = "What is Company developed xcode?"
            Button1.setTitle("Apple", for: UIControlState.normal)
            Button2.setTitle("Samsung", for: UIControlState.normal)
            Button3.setTitle("Sonny", for: UIControlState.normal)
            Button4.setTitle("LG", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 5:
            Question.text = "What is platform that Swift running on?"
            Button1.setTitle("iOS", for: UIControlState.normal)
            Button2.setTitle("Linux", for: UIControlState.normal)
            Button3.setTitle("Windows", for: UIControlState.normal)
            Button4.setTitle("Ubuntu", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        default:
            break
        }
    }
    //
    func Hide(){
        Answer.isHidden = true
        Next.isHidden = true
    }
    func UnHide(){
        Answer.isHidden = false
        Next.isHidden = false
    }
    //

    @IBAction func button1Action(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "1"){
            Answer.text = "You are Corect!!!"
        }
        else{
            Answer.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func button2Action(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "2"){
            Answer.text = "You are Corect!!!"
        }
        else{
            Answer.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func button3Action(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "3"){
            Answer.text = "You are Corect!!!"
        }
        else{
            Answer.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func button4Action(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "4"){
            Answer.text = "You are Corect!!!"
        }
        else{
            Answer.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func Next(_ sender: Any) {
        if(numberQuestion < 5){
            numberQuestion += 1
            RandomQuestion()
            Hide()
        }
        
//        else{
//            numberQuestion = 0
//            numberQuestion += 1
//            RandomQuestion()
//            Hide()
//        }
        
        
    }

}

