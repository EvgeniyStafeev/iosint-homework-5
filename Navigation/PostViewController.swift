//
//  PostViewController.swift
//  Navigation
//
//  Created by Стафеев Евгений on 01.11.2022.
//

import UIKit
import StorageService

class PostViewController: UIViewController {
    //var post = Post(title: "Post")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        makeBarItem()
        
    }
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    @objc private func tapAction() {
        let infoVC = InfoViewController()
        navigationController?.pushViewController(infoVC, animated: true)
    }
}

