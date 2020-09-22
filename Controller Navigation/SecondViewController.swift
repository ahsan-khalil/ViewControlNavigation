//
//  SecondViewController.swift
//  Controller Navigation
//
//  Created by AhsanKhalil on 22/09/2020.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var enteredName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = enteredName

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
