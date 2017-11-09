//
//  addGroupVC.swift
//  breakpoint
//
//  Created by robin ustarroz on 09/11/2017.
//  Copyright © 2017 robin ustarroz. All rights reserved.
//

import UIKit

class AddGroupVC: UIViewController {

    @IBOutlet weak var descriptionTextField: insetTextField!
    @IBOutlet weak var titleTextField: insetTextField!
    @IBOutlet weak var emailSearchTextField: insetTextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupMemberLbl: UILabel!
    @IBOutlet weak var doneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    

    @IBAction func quitButtonWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
}

extension AddGroupVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserCell else { return UITableViewCell()}
        let profileImage = UIImage(named: "defaultProfileImage")
        
        cell.configureCell(profileImage: profileImage!, email: "yolo@yolos.com", isSelected: true)
        return cell
    }
}
