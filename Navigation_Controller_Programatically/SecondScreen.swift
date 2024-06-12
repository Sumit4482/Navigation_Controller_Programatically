//
//  SecondScreen.swift
//  Navigation_Controller_Programatically
//
//  Created by E5000855 on 05/06/24.
//

import UIKit

class SecondScreen: UIViewController {
    let nextBtn = UIButton()
    var data: String?
    let studentData: [[String: Any]] = [
        ["name": "John", "age": 20, "grade": "A", "city": "New York"],
        ["name": "Emma", "age": 21, "grade": "B", "city": "Los Angeles"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Second Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupBtn()
        if let dataToDisplay = data {
                    let label = UILabel()
                    label.text = dataToDisplay
                    label.translatesAutoresizingMaskIntoConstraints = false
                    view.addSubview(label)
                    
                    NSLayoutConstraint.activate([
                        label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                        label.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 40)
                    ])
            }
    }
    
    func setupBtn() {
        view.addSubview(nextBtn)
        nextBtn.configuration = .filled()
        nextBtn.configuration?.baseBackgroundColor = .brown
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
        let nextScreen = ThirdScreen()
        nextScreen.title = "Third Screen"
        nextScreen.data = studentData
        navigationController?.pushViewController(nextScreen, animated: false)

    }
    
}
