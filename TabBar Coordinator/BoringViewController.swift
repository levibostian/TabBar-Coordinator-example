//
//  BoringViewController.swift
//  TabBar Coordinator
//
//  Created by Levi Bostian on 2/27/20.
//  Copyright © 2020 Levi Bostian. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

protocol BoringViewControllerDelegate: AnyObject {
}

class BoringViewController: UIViewController {
    
    fileprivate var didSetupConstraints = false
    
    weak var delegate: BoringViewControllerDelegate?
    
    let titleLabel: UILabel = {
        let view = UILabel()
        view.text = "This ViewController only exists so we can have more then 1 tab in the app. Yeah, pretty boring."
        view.textColor = .darkText
        view.font = view.font.withSize(22)
        view.numberOfLines = 0
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        
        view.setNeedsUpdateConstraints()
        
        self.title = "Boring"
    }
    
    override func updateViewConstraints() {
        if !didSetupConstraints {
            titleLabel.snp.makeConstraints { make in
                make.center.equalToSuperview()
                make.leading.equalToSuperview().offset(10)
                make.trailing.equalToSuperview().offset(-10)
            }
            
            didSetupConstraints = true
        }
        
        super.updateViewConstraints()
    }
    
}
