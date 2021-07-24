//
//  FirstViewController.swift
//  All_Repitation_Lesson
//
//  Created by Asliddin Mahmudov on 7/24/21.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createNotification()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        present(vc, animated: true, completion: nil)
    }
    
    func createNotification() {
        NotificationCenter.default.addObserver(self,selector: #selector(changeWord),name: NSNotification.Name(rawValue: "notif") ,object: nil)
    }
    
    @objc func changeWord(){
        lbl.text = "Asliddin"
    }
    
}
