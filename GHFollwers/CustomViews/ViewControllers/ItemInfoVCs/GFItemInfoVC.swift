//
//  GFItemInfoVC.swift
//  GHFollwers
//
//  Created by Anıl AVCI on 4.03.2023.
//

import UIKit

class GFItemInfoVC: UIViewController {

    let stackView = UIStackView()
    let itemInfoViewOne     = GFItemInfoView()
    let itemInfoViewTwo     = GFItemInfoView()
    let actionButton       = GFButton(backgroundColor: .systemBackground, title: "")
    var user:User!
   weak var delegate: UserInfoVCDelegate!
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgorundView()
        layoutUI()
        configureStackView()
        configureActionButton()
       
    }
    private func configureBackgorundView() {
        view.backgroundColor = .secondarySystemBackground
        view.layer.cornerRadius = 18
    }
    private func configureStackView() {
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(itemInfoViewOne)
        stackView.addArrangedSubview(itemInfoViewTwo)
    }
    @objc func configureActionButton() {
        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    }
    @objc func actionButtonTapped() {}
    
    private func layoutUI() {
        view.addSubview(stackView)
        view.addSubview(actionButton)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let padding:CGFloat = 20
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: padding),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            
           actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
           actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
           actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
           actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
 

}
