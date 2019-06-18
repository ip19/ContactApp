//
//  ViewController.swift
//  ContactApp
//
//  Created by ievgenii on 6/17/19.
//  Copyright © 2019 hw. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {
    
    // MARK: - Properties
    
    let tableView = UITableView()
    let tableViewDataSource = ViewControllerTableDataSource()
    //MARK: - Setup
    
    func setup() {
        setupView()
        setupNavigationBar()
        setupTableView()
    }
    
    func setupView() {
        view.backgroundColor = UIColor.blue
    }
    
    func setupNavigationBar() {
        title = "Screen A"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showScreenB))
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = tableViewDataSource
        tableView.register(
            MyCustomCell.self, forCellReuseIdentifier: String(describing: MyCustomCell.self)
        )
        view.addSubview(tableView)
    }
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        layout()
    }
    
    //MARK: - Layout
    
    func layout() {
        layoutTableView()
    }
    
    func layoutTableView() {
        tableView.frame = view.bounds
    }
    
    //MARK: - Selectors
    
    @objc func showScreenB() {
        let vc = ViewControllerB()
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK: - UITableViewDelegate

extension ViewControllerA: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let _ = tableViewDataSource.data[indexPath.row]
    }
}

//MARK: - ViewControllerBDelegate

extension ViewControllerA: ViewControllerBDelegate {
    func didPressSave(string: String) {
        tableViewDataSource.data.append(string)
        tableView.reloadData()
    }
    
    
}

