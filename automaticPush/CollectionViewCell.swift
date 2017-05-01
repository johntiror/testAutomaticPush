//
//  CollectionViewCell.swift
//  automaticPush
//
//  Created by Stefano on 01/05/2017.
//  Copyright © 2017 Stefano. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = UIColor.orange
        
        //create the text view
        let commentField = UITextView(frame: CGRect(x: 10, y: contentView.frame.maxY-50, width: contentView.frame.maxX - 20, height: 40))
        commentField.backgroundColor = UIColor.white
        
        //add the "done" button to remove the keyboard
        let toolbarDone = UIToolbar.init()
        toolbarDone.sizeToFit()
        let space = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let barBtnDone = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(dismissKeyboard))
        toolbarDone.items = [space, barBtnDone]
        commentField.inputAccessoryView=toolbarDone
        
        contentView.addSubview(commentField)
        
    }
    
    func dismissKeyboard() {
        contentView.endEditing(true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
