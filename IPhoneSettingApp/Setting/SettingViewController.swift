//
//  SettingViewController.swift
//  IPhoneSettingApp
//
//  Created by yc on 2021/12/31.
//

import UIKit
import SnapKit

class SettingViewController: UIViewController {

    private lazy var presenter = SettingPresenter(viewController: self)
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        
        tableView.dataSource = presenter
        tableView.delegate = presenter
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

extension SettingViewController: SettingProtocol {
    func setupNavigationItem() {
        navigationItem.title = "설정"
        navigationController?.navigationBar.prefersLargeTitles = true
        let searchController = UISearchController()
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = tableView.backgroundColor
        appearance.shadowColor = .none
        navigationController?.navigationBar.standardAppearance = appearance;
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
    }
    func setupViewBackgroundColor() {
        view.backgroundColor = .systemBackground
    }
    func setupView() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
}
