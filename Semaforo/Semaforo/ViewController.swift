//
//  ViewController.swift
//  Semaforo
//
//  Created by Kevin Longue on 07/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var remainingTime = 10
    var timer = Timer()
    
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
    
     
    
    let timeLabel : UILabel = {
        let time = UILabel()
        time.text = "\(remainingTime)"
        time.textColor = .white
        time.backgroundColor = .black
        time.font = .systemFont(ofSize: 40)
        time.translatesAutoresizingMaskIntoConstraints = false
        time.textAlignment = .center
        return time
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubViews()
        addConstraints()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    
    func addSubViews(){
        self.view.addSubview(rect)
        self.view.addSubview(red)
        self.view.addSubview(yellow)
        self.view.addSubview(green)
        self.view.addSubview(timeLabel)
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
            
            timeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            timeLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            timeLabel.widthAnchor.constraint(equalToConstant: 100)
            
            ])

            red.layer.cornerRadius = 40
            yellow.layer.cornerRadius = 40
            green.layer.cornerRadius = 40
        
    
    }
    
   
       
}

