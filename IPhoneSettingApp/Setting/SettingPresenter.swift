//
//  SettingPresenter.swift
//  IPhoneSettingApp
//
//  Created by yc on 2021/12/31.
//

import UIKit

protocol SettingProtocol {
    func setupNavigationItem()
    func setupViewBackgroundColor()
    func setupView()
}

class SettingPresenter: NSObject {
    private let viewController: SettingProtocol
    
    private let settingContents = [
        ["이영찬"],
        ["Apple TV+ 3개월 무료 체험"],
        ["에어플레인 모드", "Wi-Fi", "Bluetooth", "셀룰러", "개인용 핫스팟"],
        ["알림", "사운드 및 햅틱", "집중 모드", "스크린 타임"],
        ["일반", "제어 센터", "디스플레이 및 밝기", "홈 화면", "손쉬운 사용", "배경화면", "Siri 및 검색", "Face ID 및 암호", "긴급 구조 요청"],
        ["일반", "제어 센터", "디스플레이 및 밝기", "홈 화면", "손쉬운 사용", "배경화면", "Siri 및 검색", "Face ID 및 암호", "긴급 구조 요청"]
    ]
    
    init(viewController: SettingProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController.setupNavigationItem()
        viewController.setupViewBackgroundColor()
        viewController.setupView()
    }
}

extension SettingPresenter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 80.0
        default:
            return -1.0
        }
    }
}

extension SettingPresenter: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingContents.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingContents[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "SettingTableViewCell")
            let settingContent = settingContents[indexPath.section][indexPath.row]
            cell.imageView?.image = UIImage(systemName: "person.circle.fill")
            cell.tintColor = [.red, .blue, .orange, .lightGray, .green, .label].randomElement()
            cell.textLabel?.text = "\(settingContent)"
            cell.detailTextLabel?.text = "Apple ID, iCloud, 미디어 및 구입"
            cell.accessoryType = .disclosureIndicator
            return cell
        default:
            let cell = UITableViewCell()
            
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "square.fill")
            
            let settingContent = settingContents[indexPath.section][indexPath.row]
            content.text = "\(settingContent)"
            content.imageProperties.tintColor = [.red, .blue, .orange, .lightGray, .green, .label].randomElement()
            cell.contentConfiguration = content

            cell.accessoryType = .disclosureIndicator
            return cell
        }
    }
}
