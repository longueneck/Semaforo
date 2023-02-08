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
    
    let red : UIView = {
            let view = UIView()
            view.backgroundColor = .red
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
    
    let yellow : UIView = {
            let view = UIView()
            view.backgroundColor = .yellow
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
    
    let green : UIView = {
            let view = UIView()
            view.backgroundColor = .green
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubViews()
        addConstraints()
    }
    
    
    func addSubViews(){
        self.view.addSubview(rect)
        self.view.addSubview(red)
        self.view.addSubview(yellow)
        self.view.addSubview(green)
    }
    
    
    func addConstraints(){
        NSLayoutConstraint.activate([
        
            rect.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            rect.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            rect.heightAnchor.constraint(equalToConstant: 300),
            rect.widthAnchor.constraint(equalToConstant: 130),
            
            red.centerXAnchor.constraint(equalTo: rect.centerXAnchor),
            red.topAnchor.constraint(equalTo: rect.topAnchor, constant: 20),
            red.widthAnchor.constraint(equalToConstant: 75),
            red.heightAnchor.constraint(equalToConstant: 75),
            
            yellow.centerXAnchor.constraint(equalTo: rect.centerXAnchor),
            yellow.centerYAnchor.constraint(equalTo: rect.centerYAnchor),
            yellow.widthAnchor.constraint(equalToConstant: 75),
            yellow.heightAnchor.constraint(equalToConstant: 75),
            
            green.centerXAnchor.constraint(equalTo: rect.centerXAnchor),
            green.topAnchor.constraint(equalTo: yellow.bottomAnchor, constant: 20),
            green.widthAnchor.constraint(equalToConstant: 75),
            green.heightAnchor.constraint(equalToConstant: 75),
            
            ])

            red.layer.cornerRadius = 40
            yellow.layer.cornerRadius = 40
            green.layer.cornerRadius = 40
        
        
    
        
    }
    
    
    
}

