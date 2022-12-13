//
//  CustomTableViewCell.swift
//  practiceSnapkit
//
//  Created by Али  on 16.11.2022.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = "CustomTableViewCell"
    
    private var _switch: UISwitch = {
        let _switch = UISwitch()
        _switch.tintColor = .blue
        _switch.isOn = true
        return _switch
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        
        setup()
        makeConstraints()
    }
    required init?(coder:NSCoder) {
        fatalError("init(coder has not been implemented")
    }
    func setup() {
        contentView.addSubview(_switch)
    }
    func makeConstraints() {
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(5)
        }
        _switch.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.top.equalTo(5)
        }
    }
}
