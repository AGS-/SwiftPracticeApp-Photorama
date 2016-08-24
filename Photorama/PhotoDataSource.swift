//
//  PhotoDataSource.swift
//  Photorama
//
//  Created by Angel Gomez on 8/24/16.
//  Copyright © 2016 Angel Gomez Salazar. All rights reserved.
//

import UIKit

class PhotoDataSource: NSObject, UICollectionViewDataSource {
    
    var photos = [Photo]()
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let identifier = "UICollectionViewCell"
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPath) as! PhotoCollecionViewCell
        
        let photo = photos[indexPath.row]
        cell.updateWithImage(photo.image)
        
        return cell
    }
    
}
