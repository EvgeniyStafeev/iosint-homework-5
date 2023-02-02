//
//  InfoViewController.swift
//  Navigation
//
//  Created by Стафеев Евгений on 01.11.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        makeButton2()
    }
    private func makeButton2() {
        let buttonInfo = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        buttonInfo.center = view.center
        buttonInfo.setTitle("Allert", for: .normal)
        buttonInfo.backgroundColor = .black
        buttonInfo.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        view.addSubview(buttonInfo)
    }
    @objc private func showAlert() {
        let alert = UIAlertController(title: "Ошибка", message: "Вернутся обратно?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Да", style: .default) { _ in
            self.navigationController?.popViewController(animated: true)
            print("Пользователь нажал Да")
        }
        let cancelAction = UIAlertAction(title: "Нет", style: .destructive) { _ in
            print("Пользователь нажал Нет")
        }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
        
}

