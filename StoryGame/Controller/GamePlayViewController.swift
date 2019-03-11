//
//  GamePlayViewController.swift
//  StoryGame
//
//  Created by MacBook Pro on 3/9/19.
//  Copyright © 2019 Code Drizzlers. All rights reserved.
//

import UIKit

class GamePlayViewController: UIViewController {
    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var myUIImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //txtView.text = "In a storyboard-based application, you will often want to do a little preparation before navigationIn a storyboard-based application, you will often want to do a little preparation before navigation"
        /*
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(tapGesture1))
        myUIImageView.addGestureRecognizer(tap1)
        myUIImageView.isUserInteractionEnabled = true
 */
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.animatedText()
       // txtViewHC.constant = self.txtView.contentSize.height
    }
    /*
    @objc func tapGesture1() {
        myUIImageView.image = UIImage(named: "pele")
        print("Image Tapped")
    }
*/

    func animatedText() {
        
       txtView.text = ""
        let animatedText = "He is an Argentine retired professional footballer and current manager of Mexican second division club Dorados. Many in the sport, including football writers, players, and fans, regard him as the greatest football player of all time."
        for char in animatedText {
            txtView.text! += "\(char)"
            let range = NSMakeRange(self.txtView.text.lengthOfBytes(using: String.Encoding.utf8), 0)
            self.txtView.scrollRangeToVisible(range)
            //txtView.textAlignment
            RunLoop.current.run(until: Date()+0.10)
           
        }
    }

}
