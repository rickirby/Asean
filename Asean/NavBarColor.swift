//
//  NavBarColor.swift
//  Asean
//
//  Created by Ricki Bin Yamin on 16/07/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

func setNavBarColor(_ target: UIViewController, backgroundColor: UIColor?, textColor: UIColor?, tintColor: UIColor?) {
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.configureWithOpaqueBackground()
    navBarAppearance.titleTextAttributes = [.foregroundColor: textColor ?? .black]
    navBarAppearance.largeTitleTextAttributes = [.foregroundColor: textColor ?? .black]
    navBarAppearance.backgroundColor = backgroundColor ?? .white
    target.navigationController?.navigationBar.tintColor = tintColor ?? .systemBlue
    target.navigationController?.navigationBar.standardAppearance = navBarAppearance
    target.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
}
