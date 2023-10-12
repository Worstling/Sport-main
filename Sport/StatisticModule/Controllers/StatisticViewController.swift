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
    
    private let tableView = StatisticTableView()
    private let exercisesLabel = UILabel(text: "Exercises")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        
        view.backgroundColor = .specialBackground
        
        view.addSubview(statisticLabel)
        view.addSubview(exercisesLabel)
        view.addSubview(tableView)
        
    }
}
    //MARK: - Set Constraints
    
    extension StatisticViewController {
        
        private func setConstraints(){
            NSLayoutConstraint.activate([
                
                statisticLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                statisticLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                exercisesLabel.topAnchor.constraint(equalTo: statisticLabel.bottomAnchor, constant: 100),
                exercisesLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                exercisesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                tableView.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 0),
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
            ])
        }
    }

