//
//  ViewController.swift
//  Navigation_Controller_Programatically
//
//  Created by E5000855 on 05/06/24.
//

import UIKit

class FirstScreen: UIViewController {

    let nextBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupBtn()
    }


    func setupBtn() {
        view.addSubview(nextBtn)
        nextBtn.configuration = .filled()
        nextBtn.configuration?.baseBackgroundColor = .systemPink
        nextBtn.configuration?.title = "Next"
        nextBtn.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        nextBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            nextBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextBtn.widthAnchor.constraint(equalToConstant: 200),
            nextBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        nextScreen.data = "Data from Screen A"
        
        navigationController?.pushViewController(nextScreen, animated: false)

    }
}

