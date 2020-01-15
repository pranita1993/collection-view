//
//  ViewController.swift
//  collectionview11
//
//  Created by Student P_04 on 06/12/19.
//  Copyright © 2019 Felix ITs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
var numberArray = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...30
        {
            numberArray.append(i)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    fileprivate  let numberOfItems = 3
    fileprivate let inset = UIEdgeInsetsMake(10, 10, 10, 10)
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
     {
        return inset.left
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return inset
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        let collectionWidth = collectionView.bounds.width
        let totalEmptySpace = (inset.left + inset.right) + ((inset.left)*CGFloat(numberOfItems-1))
        let totalItemSpace = collectionWidth - totalEmptySpace
        let width = CGFloat(totalItemSpace)/CGFloat(numberOfItems)
        return CGSize(width: width, height: width)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!CollectionViewCell
    cell.numberlabel.text = String(numberArray[indexPath.row])
        
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

