//
//  QuestionAnswerTableViewCell.swift
//  StoryGame
//
//  Created by MacBook Pro on 3/11/19.
//  Copyright © 2019 Code Drizzlers. All rights reserved.
//

import UIKit

class QuestionAnswerTableViewCell: UITableViewCell {
   
   // @IBOutlet weak var txtBC: NSLayoutConstraint!
    
    @IBOutlet weak var answerTextField: UITextField!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        answerTextField.frame = CGRect(x: 10, y: 10, width: 250.00, height: 30.00)
        answerTextField.borderStyle = .roundedRect
        answerTextField.layer.borderWidth = 5
        answerTextField.clearButtonMode = .whileEditing
        answerTextField.placeholder = "Insert Answer"
   
        
        
        /*
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillHide(notification:)), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
        
      
    }
    @objc func keyBoardWillShow(notification: Notification) {
        if let userInfo = notification.userInfo as? Dictionary<String, AnyObject> {
            let frame = userInfo[UIKeyboardFrameEndUserInfoKey]
            let keyBoardRect = frame?.cgRectValue
            if let keyBoardHeight = keyBoardRect?.height {
                txtBC.constant = keyBoardHeight
            }
            
        }
    }
    @objc func keyBoardWillHide(notification: Notification) {
        
    }
*/
    }

}
