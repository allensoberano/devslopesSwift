//
//  ViewController.swift
//  PageThatScroll
//
//  Created by Allen Soberano on 11/16/16.
//  Copyright © 2016 Allen Soberano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //originally had this code in "viewDidLoad" but the frame data isn't
        //available yet until viewDidAppear
        var contentWidth: CGFloat = 0.0
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
            
        }
        
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
        print(images.count)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

