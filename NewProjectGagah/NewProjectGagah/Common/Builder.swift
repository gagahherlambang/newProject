//
//  Builder.swift
//  NewProjectGagah
//
//  Created by Gagah on 08/05/20.
//  Copyright © 2020 Gagah. All rights reserved.
//

import Foundation
import UIKit

class Builder {
    static let shared = Builder()
    
    func login() -> UIViewController {
        let view = LoginViewController()
        return view
    }
    
    func mainHome() -> UIViewController {
        let view = MainHomeViewController()
        return view
    }
    
    func profile() -> UIViewController {
        let view = ProfileViewController()
        return UINavigationController(rootViewController: view)
    }
    
    func mainHomeTabBar() -> UIViewController {
        return MainHomeTabBarController()
    }
    
//    func photosSlider() -> UIViewController{
//        let view = AlbumViewController()
//        return UINavigationController(rootViewController: view)
//    }
//    
//    func createPhotosView(album: Album) -> UIViewController {
//        let view = PhotosViewController()
//        view.album = album
//        return view
//    }
}
