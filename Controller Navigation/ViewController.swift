//
//  ViewController.swift
//  Controller Navigation
//
//  Created by AhsanKhalil on 22/09/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var enteredName = ""

    @IBOutlet weak var returnedLable: UILabel!
    @IBOutlet weak var EditTextName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: NSNotification.Name(rawValue: "NamethirdScreenText"), object: nil)
        
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
    @IBAction func submit3Fun(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "third") as! ThirdScreen
        vc.modalPresentationStyle = .fullScreen
        enteredName = EditTextName.text!
        vc.name = enteredName
        present(vc,animated: true)
        
        
    }
    
    
    
    @objc func didGetNotification(_ notification:NSNotification){
        
       //let textT = notification.object as! String?
        returnedLable.text = "MAI PAGAL HO"

    }
    
}

