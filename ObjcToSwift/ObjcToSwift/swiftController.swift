//
//  swiftController.swift
//  ObjcToSwift
//
//  Created by 김지나 on 2020/08/17.
//  Copyright © 2020 김지나. All rights reserved.
//

import Foundation
import UIKit

@objc class SwiftController: UIViewController {
    @objc(data)//data annotation(objc에서 swift 클래스를 참조하기 위함)
    var data = "" //objc 파일에서 받아올 데이터 저장 변수
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = label.text! + ":" + data
    }
}
