//
//  ViewController.swift
//  how many fingers
//
//  Created by Jordan Williams on 12/10/14.
//  Copyright (c) 2014 Jordan Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lives: UILabel!
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var message: UILabel!
    
    
    @IBOutlet weak var score: UILabel!
    
   
    
    var livesnum = 2
    var scorenum = 0


    
    //once button is pressed
    @IBAction func button(sender: AnyObject)
    {
        var input = Int(userInput.text!)
        
        var rando = arc4random()%6
        var randos = Int(rando)
        
        print(randos)
        
        if(input == randos)
        {
            message.text = "congratulations"
            scorenum += 1
            score.text = String(scorenum)
        }
        else
        {
            livesnum  = livesnum-1
         
            
            if(livesnum == -1)
            {
                message.text = "sorry you lose here is 2 more life"
                livesnum = 2
                lives.text = "you have \(livesnum) lives"
                
            
            }
            else
            {
            
                message.text = "nope try again"
                lives.text = "you have  \(livesnum) lives"
            
            }
            
            
        
        }
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

