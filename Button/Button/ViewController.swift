//
//  ViewController.swift
//  Button
//
//  Created by Zain Chalisa on 9/8/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
    }
    
    func createButton(){
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.center = view.center
        button.configuration = createConfig()
        view.addSubview(button)
    }
    
    func createConfig() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = .systemCyan
        config.title = "Sign In"
        return config
    }


}

