//
//  ViewController.swift
//  Semaforo
//
//  Created by Kevin Longue on 07/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let rect : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        
        return view
    }()
    
    let RedLight : UIView = {
        let red = UIView()
        red.translatesAutoresizingMaskIntoConstraints = false
        red.backgroundColor = .black
        
        return red
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubViews()
        addConstraints()
    }
    
    
    func addSubViews(){
        self.view.addSubview(rect)
        self.view.addSubview(RedLight)
    }
    
    
    func addConstraints(){
        NSLayoutConstraint.activate([
        
            rect.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            rect.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            rect.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            rect.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300),
            rect.widthAnchor.constraint(equalToConstant: 30),
            
            RedLight.widthAnchor.constraint(equalToConstant: 100),
            RedLight.heightAnchor.constraint(equalToConstant: 100),
            RedLight.centerXAnchor.constraint(equalTo: ),
            RedLight.centerYAnchor.constraint(equalTo: rect.topAnchor, constant: 0),
        ])
    }
    
    
    
}

