//
//  ViewController.swift
//  Controller Navigation
//
//  Created by AhsanKhalil on 22/09/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var enteredName = ""

    @IBOutlet weak var EditTextName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onSubmit(_ sender: Any) {
        enteredName = EditTextName.text!
        performSegue(withIdentifier: "mainToSecond", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newViewController = segue.destination as! SecondViewController
        newViewController.enteredName = enteredName
        
        
    }

}

