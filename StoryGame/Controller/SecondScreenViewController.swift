//
//  SecondScreenViewController.swift
//  StoryGame
//
//  Created by MacBook Pro on 3/10/19.
//  Copyright © 2019 Code Drizzlers. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {

    @IBOutlet weak var txtBC: SecondeScreenAnswerView!
    
    
    // @IBOutlet weak var txtBC: SecondeScreenAnswerView!

    override func viewDidLoad() {
        super.viewDidLoad()
       //txtBC.bindToKeyboard()
        
        txtBC.bindToKeyboard()
       
}

}
extension SecondScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 5
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! QuestionAnswerTableViewCell
    
        return cell
    }
    
    
  
    
}


