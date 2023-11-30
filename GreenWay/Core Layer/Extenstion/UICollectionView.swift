//
//  UICollectionView.swift
//  GreenWay
//
//  Created by Ernar Khasen on 30.11.2023.
//

import UIKit

extension UICollectionView {
    
    //MARK: - Dequeue
    
    public func dequeueReusableCell<Cell: UICollectionViewCell>(for indexPath: IndexPath) -> Cell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: "\(Cell.self)", for: indexPath) as? Cell else {
            fatalError("register(cellClass: \(Cell.self)) has not been implemented")
        }

        return cell
    }
    
    //MARK: - Register
    
    public func register(cellClass: AnyClass) {
        register(cellClass, forCellWithReuseIdentifier: "\(cellClass)")
    }
}
