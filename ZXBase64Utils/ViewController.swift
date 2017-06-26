//
//  ViewController.swift
//  ZXBase64Utils
//
//  Created by screson on 2017/6/26.
//  Copyright © 2017年 screson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let string = "{\"username\":\"juanfelix\",\"info\":\"你好\",\"tel\":\"123456789\"}"
        //let string = "Hello,你好,a123"
        let encodeText = string.zx_base64Encode()
        let decodeText = encodeText.zx_base64Decode()
        print("encode text:\(encodeText)")
        print("decode text:\(decodeText)")
        
        //System Method
        let data = string.data(using: .utf8, allowLossyConversion: true)
        let base64String = data?.base64EncodedString(options: Data.Base64EncodingOptions.init(rawValue: 0))
        print(base64String ?? "")
        
        let data2 = Data(base64Encoded: base64String!, options: Data.Base64DecodingOptions.init(rawValue: 0))
        let decodeString = String.init(data: data2!, encoding: .utf8)
        print(decodeString ?? "")
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

