//
//  AuthorViewController.swift
//  Locus
//
//  Created by Arjun Neupane on 2019-09-25.
//  Copyright © 2019 Arjun Neupane. All rights reserved.
//

import UIKit

class AuthorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func closeAuthor(_ sender: Any) {
     dismiss(animated: true, completion: nil)
    }
    
    
}
