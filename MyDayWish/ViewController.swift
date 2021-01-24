//
//  ViewController.swift
//  MyDayWish
//
//  Created by Валентина Калайда on 03.11.2020.
//  Copyright © 2020 Валентина Калайда. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateWishLabel: UILabel!
    @IBAction func tapButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateWishLabel.layer.cornerRadius = 10
        currentDate()
    }
    
    func currentDate() {
        let date = Date()
        let currentDate = DateFormatter()
        currentDate.dateFormat = "dd.MM.yyyy"
        let dateString = currentDate.string(from: date)
        dateWishLabel.text = dateString
    }
    
}


// MARK: - SwiftUI
import SwiftUI

struct MainVCProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ContainerView().edgesIgnoringSafeArea(.all)
        }
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let mainVC = ViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<MainVCProvider.ContainerView>) -> ViewController {
            return mainVC
        }
        
        func updateUIViewController(_ uiViewController: MainVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainVCProvider.ContainerView>) {
            
        }
    }
}

