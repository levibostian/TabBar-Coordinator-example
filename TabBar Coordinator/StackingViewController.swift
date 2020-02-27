//
//  EndlessViewController.swift
//  TabBar Coordinator
//
//  Created by Levi Bostian on 2/27/20.
//  Copyright © 2020 Levi Bostian. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

protocol StackingViewControllerDelegate: AnyObject {
    func didTapStack(_ viewController: StackingViewController)
}

/**
 ViewController to show as an example of a ViewController that uses a UINavigationController and a child coordinator. Since this demo project is meant to show how a Tab Bar simply shows child coordinators.
 */
class StackingViewController: UIViewController {
    
    fileprivate var didSetupConstraints = false
    
    weak var delegate: StackingViewControllerDelegate?
    
    var numberInStack: Int = 0 {
        didSet {
            numberInStackLabel.text = "Number in stack: \(String(self.numberInStack))"
        }
    }
    
    let numberInStackLabel: UILabel = {
        let view = UILabel()
        view.text = ""
        view.textColor = .darkText
        view.font = view.font.withSize(22)
        return view
    }()
    
    let stackButton: UIButton = {
        let view = UIButton()
        view.setTitle("Stack", for: .normal)
        view.setTitleColor(.systemBlue, for: .normal)
        return view
    }()
    
    let rootView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .equalSpacing
        view.alignment = .center
        view.spacing = 10
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        rootView.addArrangedSubview(numberInStackLabel)
        rootView.addArrangedSubview(stackButton)
        
        view.addSubview(rootView)
    
        view.setNeedsUpdateConstraints()
        
        stackButton.addTarget(self, action: #selector(stackButtonPressed), for: .touchUpInside)
        self.title = "Stack"
    }
    
    @objc func stackButtonPressed() {
        delegate?.didTapStack(self)
    }
    
    override func updateViewConstraints() {
        if !didSetupConstraints {
            rootView.snp.makeConstraints { make in
                make.center.equalTo(view)
            }
            
            didSetupConstraints = true
        }
        
        super.updateViewConstraints()
    }
    
}

