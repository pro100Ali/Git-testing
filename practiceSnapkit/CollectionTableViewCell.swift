//
//  CustomTableViewCell.swift
//  practiceSnapkit
//
//  Created by Али  on 16.11.2022.
//

import UIKit
import SnapKit


final class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = actualWeatherCollectionView.dequeueReusableCell(withReuseIdentifier: Constants.Identifiers.collectionViewCell, for: indexPath) as! CollectionViewCell
        return cell
    }
    
    
    static let identifier = "CustomTableViewCell"
    
    
     
    lazy private var actualWeatherCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 180, height: 210)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: Constants.Identifiers.collectionViewCell)
        collectionView.backgroundColor = .clear
        collectionView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
//        UIColor(red: 248, green: 244, blue: 249, alpha: 0.2)

        collectionView.layer.cornerRadius = 40
        collectionView.showsHorizontalScrollIndicator = false
        
        return collectionView
    }()
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)

        actualWeatherCollectionView.delegate = self
        actualWeatherCollectionView.dataSource = self
        
        setup()
        makeConstraints()
    }
    required init?(coder:NSCoder) {
        fatalError("init(coder has not been implemented")
    }
    func setup() {
        contentView.addSubview(actualWeatherCollectionView)
    }
    func makeConstraints() {
//        contentView.snp.makeConstraints { make in
//            make.edges.equalToSuperview().inset(5)
//        }
        actualWeatherCollectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(10)
        }
        
    }
}


extension CollectionViewCell: UICollectionViewDelegate {
    
    
}


//
//extension CollectionViewCell: UICollectionViewDataSource {
//
//
//}

