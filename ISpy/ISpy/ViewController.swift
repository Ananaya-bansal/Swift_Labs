//
//  ViewController.swift
//  ISpy
//
//  Created by Ananaya on 11/04/24.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }
    func updateZoomFor(size: CGSize){
        let widthScale = size.width / image.bounds.width
        let heightScale = size.height / image.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
        
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
}

