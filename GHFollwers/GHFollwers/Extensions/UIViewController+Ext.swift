  //
//  UIViewController+Ext.swift
//  GHFollwers
//
//  Created by Anıl AVCI on 25.02.2023.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title: String,message:String,buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC,animated: true)
        }
    }
    
    func showEmptyStateView(with message:String, in view: UIView) {
        let emptyStateView = GFEmtyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
}
