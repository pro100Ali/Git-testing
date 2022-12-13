//
//  ViewController.swift
//  practiceSnapkit
//
//  Created by Али  on 16.11.2022.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    
    private let identifier = "CustomTableViewCell"
    

    

    private var tableView: UITableView = {
        let table = UITableView()
//        table.backgroundColor = .red
//        table.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        table.layer.cornerRadius = 40
        return table
    }()
    
//    private var tableViewCollection: UITableView = {
//        let table = UITableView()
//        table.backgroundColor = .yellow
//        table.register(CollectionViewCell.self, forCellReuseIdentifier: "cell")
//        return table
//    }()
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        tableView.dataSource = self
        tableView.delegate = self
        
        setupView()
        makeConstraints()
    }
//

    func setupView() {
        view.addSubview(tableView)
    }
    func makeConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
//            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(10)
//            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(130)
//            make.leading.trailing.equalToSuperview().inset(25)
        }
    }
}

extension ViewController: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "hello world"
//    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        130
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        600
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "price"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0: let cell = CollectionTableViewCell()
            cell.backgroundColor = .clear
            return cell
        case 1: let cell = CustomTableViewCell()
            cell.backgroundColor = .clear
            return cell
        default:
            return UITableViewCell()
        }
        
        
    }
    
}





