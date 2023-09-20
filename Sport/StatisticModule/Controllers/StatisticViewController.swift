//
//  StatisticViewController.swift
//  Sport
//
//  Created by Vladislav on 05.09.2023.
//

import UIKit
class StatisticViewController: UIViewController {
    
    private let statisticLabel: UILabel = {
        let label = UILabel()
        label.text = "STATISTICS"
        label.font = .robotoMedium24()
        label.textColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tableView = StatisticViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        
        view.backgroundColor = .systemRed
        
        view.addSubview(statisticLabel)
    }
}

    //MARK: - Set Constraints
    
    extension StatisticViewController {
        
        private func setConstraints(){
            NSLayoutConstraint.activate([
                
                statisticLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                statisticLabel.leadingAnchor.constraint(equalTo: view.centerXAnchor),
            ])
        }
    }

