//
//  CharacterCell.swift
//  SchwiftyPagination
//
//  Created by Darkhonbek Mamataliev on 10/21/20.
//

import UIKit

private extension CGFloat {
    static let verticalPadding: CGFloat = 24
    static let horizontalPadding: CGFloat = 24
}

class CharacterCell: UITableViewCell {
    var viewModel: CharacterCellViewModelProtocol? {
        didSet {
            nameLabel.text = viewModel?.name
            specieLabel.text = viewModel?.specie
        }
    }

    private var nameLabel: UILabel = UILabel()
    private var specieLabel: UILabel = UILabel() // TODO: add specie label

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        [nameLabel, specieLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: .verticalPadding),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: .horizontalPadding),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -.horizontalPadding),
            nameLabel.lastBaselineAnchor.constraint(equalTo: bottomAnchor, constant: -.verticalPadding),
        ])
    }
}
