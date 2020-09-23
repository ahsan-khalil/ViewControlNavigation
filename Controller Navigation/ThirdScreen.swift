//
//  ThirdScreen.swift
//  Controller Navigation
//
//  Created by AhsanKhalil on 22/09/2020.
//

import UIKit

class ThirdScreen: UIViewController {

    public var name = ""
    
    @IBOutlet weak var returnEditText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text  = name
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func goBack(_ sender: Any) {
        
        NotificationCenter.default.post(name: NSNotification.Name("thirdScreenText"),object: returnEditText.text)
        
        dismiss(animated: true,completion: nil)
        
    }
    
    
    
}
