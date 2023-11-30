//
//  ProfileViewController.swift
//  GreenWay
//
//  Created by Ernar Khasen on 29.11.2023.
//

import UIKit
import SnapKit

final class ProfileViewController: UIViewController {
    
    //MARK: - Properties
    weak var viewModel: ProfileViewModel?

    //MARK: - View
    private lazy var mainView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.showsHorizontalScrollIndicator = false
        view.dataSource = self
        view.delegate = self
        view.register(cellClass: CardCollectionViewCell.self)
        
        return view
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .green
        setup()
    }
    
    private func setup() {
        setupViews()
        makeConstraints()
    }
    
    private func setupViews() {
        [mainView].forEach {
            view.addSubview($0)
        }
    }
    
    private func makeConstraints() {
        mainView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(16)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(194)
        }
    }
}


