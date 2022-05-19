//
//  UserInfoVC.swift
//  GHUsers
//
//  Created by Anna Sibirtseva on 18/05/2022.
//

import UIKit

class UserInfoVC: UIViewController {

    var username: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        guard let username = username else {
            return
        }
        print(username)
    }

    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
