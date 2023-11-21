//
//  NewWorkoutController.swift
//  Sport
//
//  Created by Vladislav on 24.10.2023.
//

import UIKit

class NewWorkoutViewController:  UIViewController {
    

    private let newWorkoutLabel: UILabel = {
        let label = UILabel()
       label.text = "NEW WORKOUT"
       label.font = .robotoMedium24()
       label.textColor = .specialGray
       label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named: "closeButton"), for: .normal)
        button.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nameView = NameView()
    
    //
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.tintColor = .specialGreen
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        
        return datePicker
    }()
    
    private lazy var testSwitch: UISwitch = {
        let testSwitch = UISwitch()
        testSwitch.onTintColor = .specialGreen
        testSwitch.isOn = true
        testSwitch.addTarget(self, action: #selector(testFunc), for: .valueChanged)
        testSwitch.translatesAutoresizingMaskIntoConstraints = false
        return testSwitch
    }()
    
    private lazy var testSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.maximumTrackTintColor = .specialLightBrown
        slider.minimumTrackTintColor = .specialGreen
        slider.addTarget(self, action: #selector(testSliderTapped), for: .valueChanged)
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      setupView()
      setConstraints()
    }
    
    private func setupView(){
        view.backgroundColor = .specialBackground
        
        view.addSubview(newWorkoutLabel)
        view.addSubview(closeButton)
        view.addSubview(nameView)
        
        view.addSubview(datePicker)
        view.addSubview(testSwitch)
        view.addSubview(testSlider)
    }
    @objc private func closeButtonTapped(){
        dismiss(animated: true)
    }
    
    @objc private func testFunc(){
        print("! ! ! !")
    }
      
    @objc private func testSliderTapped(){
        print(testSlider.value)
    }
  }

extension NewWorkoutViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
        
            newWorkoutLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            newWorkoutLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            closeButton.centerYAnchor.constraint(equalTo: newWorkoutLabel.centerYAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 33),
            closeButton.widthAnchor.constraint(equalToConstant: 33),
            
            nameView.topAnchor.constraint(equalTo: newWorkoutLabel.bottomAnchor, constant: 10),
            nameView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            nameView.heightAnchor.constraint(equalToConstant: 60),
            
            datePicker.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 10),
            datePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            testSwitch.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 10),
            testSwitch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            testSlider.topAnchor.constraint(equalTo: testSwitch.bottomAnchor, constant: 10),
            testSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            testSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
     ])
    }
 }
