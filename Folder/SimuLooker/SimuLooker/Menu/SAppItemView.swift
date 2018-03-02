//
//  SAppItemView.swift
//  SimuLooker
//
//  Created by caijinzhu on 2018/3/2.
//  Copyright © 2018年 alexiuce.github.io. All rights reserved.
//

import Cocoa

class SAppItemView: NSView {

    @IBOutlet weak var appIcon: NSImageView!
    @IBOutlet weak var appName: NSTextField!
    
    @IBOutlet var backgroundView: NSView!
    
    @IBOutlet weak var bottomLineView: NSView!
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        Bundle.main.loadNibNamed(NSNib.Name.init(rawValue: "SAppMenuItem"), owner: self, topLevelObjects: nil)
        
        self.addSubview(backgroundView)
    }
    
    required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        bottomLineView.layer?.backgroundColor = NSColor.lightGray.cgColor
    }
    
    @IBAction func openAppDocumentLocation(_ sender: Any) {
        
        print("open app document location")
    }
    
    @IBAction func openAppLocation(_ sender: Any) {
        print("open app location")
    }
}
