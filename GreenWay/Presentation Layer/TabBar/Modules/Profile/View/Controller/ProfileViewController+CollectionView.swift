//
//  ProfileViewController+CollectionView.swift
//  GreenWay
//
//  Created by Ernar Khasen on 30.11.2023.
//

import UIKit

//MARK: - UICollectionViewDataSource
extension ProfileViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CardCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 132, height: 192)
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    
}
