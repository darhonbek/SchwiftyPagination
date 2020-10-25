//
//  CharactersViewController.swift
//  SchwiftyPagination
//
//  Created by Darkhonbek Mamataliev on 10/21/20.
//

import UIKit

class CharactersViewController: UITableViewController {
    var viewModel: CharacterListViewModelProtocol? {
        didSet {
            // update ui
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .yellow
        // Do any additional setup after loading the view.
    }

    init() {
        super.init(nibName: nil, bundle: nil)

        // setup ui
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - TableViewDataSource

extension CharactersViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.characters.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
        // ... reuse cells!!!
        // trigger download through view model { ... }
    }
}

