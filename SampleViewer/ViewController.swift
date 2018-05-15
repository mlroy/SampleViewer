//
//  ViewController.swift
//  SampleViewer
//
//  Created by Michael Roy on 5/7/18.
//  Copyright © 2018 Quebecois Engineering. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    // Will use a PDFDocument to assign to the PDFView here.
    @IBOutlet weak var PDFViewingArea: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        let v1 = UIView(frame:CGRect(x:113, y:111, width:132, height:194))
        v1.backgroundColor = .red
        // first: let v2 = UIView(frame:CGRect(x:41, y:56, width:132, height: 194))
        let v2 = UIView(frame:v1.bounds.insetBy(dx: 10, dy: 10))
        // note: alpha sets transparency. 1.0 is opaque, 0.0 is completely transparent.
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0.75, alpha: 0.7)
        let v3 = UIView(frame:CGRect(x:43, y:197, width:160, height: 230))
        v3.backgroundColor = UIColor.brown
        self.view.addSubview(v1)
        v1.addSubview(v2)
        v2.transform = CGAffineTransform(rotationAngle: 60 * .pi/180).translatedBy(x: 100, y: 0)
        print(v1.frame)
        self.view.addSubview(v3)
        //
        // bounds of the view area:  PDFViewingArea.bounds
        // of for the current view:  self.view.bounds
        let pv = UIView(frame:PDFViewingArea.bounds)
        pv.backgroundColor = UIColor(red: 0.5, green: 0, blue: 0.75, alpha: 0.5)
        PDFViewingArea.addSubview(pv)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

