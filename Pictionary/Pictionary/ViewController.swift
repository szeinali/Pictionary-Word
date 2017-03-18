//
//  ViewController.swift
//  Pictionary
//
//  Created by Sahand Zeinali on 3/17/17.
//  Copyright © 2017 Sand Studios. All rights reserved.
//

import UIKit
import Foundation
//extension Array {
//    func randomElement() -> Element  {
//        return self[Int(arc4random_uniform(UInt32(self.count)))]
//    }
//}
extension String {
    func separatedIntoLines() -> [String] {
        var lines: [String] = []
        let wholeString = self.startIndex..<self.endIndex
        self.enumerateSubstrings(in: wholeString, options: .byLines) {
            (substring, range, enclosingRange, stopPointer) in
            if let line = substring {
                lines.append(line)
            }
        }
        return lines
    }
}

class ViewController: UIViewController {

    @IBOutlet var textDisplay: UILabel!
    
    @IBAction func newWord(_ sender: UIButton) {
//        let lines = fileContent?.components(separatedBy: "\n")
//        var randomIndex: Int  {return (Int(arc4random_uniform(UInt32((lines?.count)!))))}
        
    }
    
//    let myArray = ["dog","cat","bird"]
//    let myItem = myArray.randomElement()
//    textDisplay.text = String(myItem)
    if let filepath = Bundle.main.path(forResource: "words", ofType: "txt") {
        do {
            let contents = try String(contentsOfFile: filepath)
            print(contents)
        } catch {
            // contents could not be loaded
        }
    } else {
    // example.txt not found!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
