//
//  WeatherView.swift
//  Sport
//
//  Created by User on 26.10.2022.
//

import UIKit

class WeatherView: UIView {
    
    private let weatherIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sun")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let weatherStatusLabel: UILabel = {
    let statusLabel = UILabel()
    statusLabel.text = "Солнечно"
    statusLabel.textColor = .specialGray
    statusLabel.font = .robotoMedium18()
    statusLabel.adjustsFontSizeToFitWidth = true
    statusLabel.minimumScaleFactor = 0.5
    statusLabel.translatesAutoresizingMaskIntoConstraints = false
    return statusLabel
    }()
    
    private let weatherDiscriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Хорошая погода, чтобы позаниматься"
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 2
        label.textColor = .specialGray
        label.font = .robotoMedium14()
        label.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.cornerRadius = 10
        addShadowOnView()
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(weatherIconImageView)
        addSubview(weatherStatusLabel)
        addSubview(weatherDiscriptionLabel)
    }
}
    
    extension WeatherView {
        
        private func setConstraints(){
            NSLayoutConstraint.activate([
                weatherIconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
                weatherIconImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
                weatherIconImageView.widthAnchor.constraint(equalToConstant: 60),
                weatherIconImageView.heightAnchor.constraint(equalToConstant: 60),
                
                weatherStatusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
                weatherStatusLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                weatherStatusLabel.trailingAnchor.constraint(equalTo: weatherIconImageView.leadingAnchor, constant: -10),
                weatherStatusLabel.heightAnchor.constraint(equalToConstant: 20),
                
                weatherDiscriptionLabel.topAnchor.constraint(equalTo: weatherStatusLabel.bottomAnchor, constant: 0),
                weatherDiscriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                weatherDiscriptionLabel.trailingAnchor.constraint(equalTo: weatherIconImageView.leadingAnchor, constant: -10),
                weatherDiscriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
            
            ])
    }
    
}

