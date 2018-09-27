//
//  ViewController.swift
//  AFSample
//
//  Created by Olha Pasko on 9/21/18.
//  Copyright © 2018 Olha Pasko. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://httpbin.org/get")
            .responseJSON {response in
                print(response.request)
                print(response.response)
                print(response.data)
                print(response.result)
                
                if let JSON = response.result.value as? [String: Any] {
                    print("JSON: \(JSON)")
                    print("Headers = \(JSON["headers"] as! [String: Any])")
                    print("Headers = \(JSON["headers"] as! [String: Any])")
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

