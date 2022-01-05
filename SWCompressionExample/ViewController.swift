//
//  ViewController.swift
//  SWCompressionExample
//
//  Created by 장효원 on 2022/01/05.
//

import UIKit
import SWCompression

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "test", withExtension: "tar")!
        print("url : ", url)
        let data = try! Data(contentsOf: url)
        print("data : ", data)
        
        //시작
        let startTime = CFAbsoluteTimeGetCurrent()
        
        let decompressedData = try? GzipArchive.unarchive(archive: data)
        
        let durationTime = CFAbsoluteTimeGetCurrent() - startTime
        
        print("decompressedData : ", decompressedData)
        print("durationTime : ", durationTime)
    }


}

