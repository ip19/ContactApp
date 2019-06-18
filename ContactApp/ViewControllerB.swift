//
//  ViewControllerB.swift
//  ContactApp
//
//  Created by ievgenii on 6/17/19.
//  Copyright © 2019 hw. All rights reserved.
//

import UIKit

protocol ViewControllerBDelegate: class {
    func didPressSave(string: String)
}

private struct Constants {
    static let fontSize: CGFloat = 36.0
}

class ViewControllerB: UIViewController {

    //MARK: - Properties
    
    weak var delegate: ViewControllerBDelegate?
    
    let dataTextField = UITextField()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        layout()
    }
    
    //MARK: - Setup
    
    func setup() {
        setupView()
        setupTextField()
        setupNavigationBar()
    }
    
    func setupView() {
        view.backgroundColor = UIColor.lightGray
    }
    
    func setupTextField() {
        dataTextField.textAlignment = .center
        dataTextField.font = UIFont.boldSystemFont(ofSize: Constants.fontSize)
        dataTextField.placeholder = "Enter text ..."
        dataTextField.becomeFirstResponder()
        view.addSubview(dataTextField)
    }
    
    func setupNavigationBar() {
        title = "Screen B"
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Save",
            style: .plain,
            target: self,
            action: #selector(save)
        )
    }
    
    //MARK: - Layout
    
    func layout() {
        layoutTextField()
    }
    
    func layoutTextField () {
        dataTextField.frame = CGRect(
            x: (view.bounds.size.width / 2) - 100,
            y: 160,
            width: 200,
            height: 40
        )
    }
    
    //MARK: - Selectors
    
   @objc func save() {
    guard let s = dataTextField.text else {
        return
    }
    
    delegate?.didPressSave(string: s)
    navigationController?.popViewController(animated: true)
    }

}
