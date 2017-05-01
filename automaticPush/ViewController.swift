//
//  ViewController.swift
//  automaticPush
//
//  Created by Stefano on 01/05/2017.
//  Copyright © 2017 Stefano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = view.bounds.size
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        let fsPicVC = CollectionViewController(collectionViewLayout: layout)
        //fsPicVC.currentIndex = dataSource.index(of: image)
        self.present(fsPicVC, animated: true) { }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

