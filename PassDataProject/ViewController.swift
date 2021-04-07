//
//  ViewController.swift
//  PassDataProject
//
//  Created by Всеволод on 06.04.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBAction func loginPressed(_ sender: UIButton) {
            performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func unwindSegueToMainScreen (segue: UIStoryboardSegue) {
        guard let svc = segue.source as? SecondViewController else { return }
        self.resultLabel.text = svc.label.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    
}

