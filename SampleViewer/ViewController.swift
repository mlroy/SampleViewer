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
    // @IBOutlet weak var PDFViewingArea: UIView!
    // @IBOutlet weak var PDFPageControl: UIPageControl!
    @IBOutlet weak var FileNameLabel: UILabel!
    
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
        // self.view.addSubview(v1)
        // v1.addSubview(v2)
        v2.transform = CGAffineTransform(rotationAngle: 60 * .pi/180).translatedBy(x: 100, y: 0)
        print(v1.frame)
        // self.view.addSubview(v3)

        // PDF view
        let songTitle = "Amazing Grace"
        // bounds of the view area:  PDFViewingArea.bounds
        // of for the current view:  self.view.bounds
        //let pv = UIView(frame:PDFViewingArea.bounds)
        //pv.backgroundColor = UIColor(red: 0.5, green: 0, blue: 0.75, alpha: 0.5)
        // PDFViewingArea.addSubview(pv)
        let mainBundle = Bundle.main
        // var pv: PDFView = PDFView(frame:self.view.bounds.insetBy(dx: 10, dy: 10))
        // TODO: try adding a UIView object with constraints, then make this PDFView a subview of it.
        let pv: PDFView = PDFView(frame:self.view.bounds.insetBy(dx: 15, dy: 30))
        // from Programming iOS 11, chapter 22, PDFs
        //let songurl = mainBundle.url(forResource: "Song1", withExtension: "pdf")
        let otherurl = mainBundle.url(forResource: songTitle, withExtension: "pdf")
        //let otherurl = mainBundle.url(forResource: songTitle, withExtension: "pdf", subdirectory: "Sample Music")
        let doc = PDFDocument(url: otherurl!)
        pv.document = doc
        pv.displayDirection = PDFDisplayDirection.horizontal
        pv.usePageViewController(true)
        // pv.displayMode = PDFDisplayMode.singlePage
        // pv.autoScales = true
        self.view.addSubview(pv)
        FileNameLabel.text = songTitle
        
        /* Display this song as an image.
        FileNameLabel.text = "Adoramus Te Christe"
        let sampleSong = UIImage(named: "Adoramus Te Christe")
        sampleSong?.resizableImage(withCapInsets: UIEdgeInsets(top:1, left:1, bottom:1, right:1), resizingMode: UIImageResizingMode.stretch)
        SampleSongImage.image = sampleSong
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

