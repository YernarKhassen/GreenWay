//
//  CardCollectionViewCell.swift
//  GreenWay
//
//  Created by Ernar Khasen on 30.11.2023.
//

import UIKit
import SnapKit

final class CardCollectionViewCell: UICollectionViewCell {
    
    //MARK: - View
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14)
        label.text = "123"
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = UIColor(red: 0.592, green: 0.592, blue: 0.592, alpha: 1)
        label.font = .systemFont(ofSize: 12)
        label.text = ""
        return label
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    private func setup() {
        setupLayer()
        setupViews()
        makeConstraints()
    }
    
    private func setupLayer() {
        layer.cornerRadius = 10
        layer.backgroundColor = UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 0.26).cgColor
    }
    
    private func setupViews() {
        [imageView, titleLabel, subtitleLabel].forEach {
            contentView.addSubview($0)
        }
    }
    
    private func makeConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(8)
            make.leading.trailing.equalToSuperview().inset(6)
            make.height.equalTo(107)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(4)
            make.leading.trailing.equalTo(6)
            make.height.equalTo(24)
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(2)
            make.leading.trailing.equalToSuperview().inset(6)
            make.bottom.equalToSuperview().inset(16)
        }
    }
}
