//
//  ViewController.swift
//  OnePointOnlineFramework
//
//  Created by manjunath.ramesh@onepointglobal.com on 09/14/2017.
//  Copyright (c) 2017 manjunath.ramesh@onepointglobal.com. All rights reserved.
//

import UIKit
import OnePointFramework_Lite

class ViewController: OPGViewController, OPGSurveyDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sdk = OPGSDK()
        do {
            let auth = try sdk.authenticate("m.ramesh", password: "dev")
        }
        catch{
            print("Authentication Failed")         /* @"Error Occured. Contact Support!" */
            
        }
        self.loadSurvey("NDPONLINE")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

      func didSurveyStartLoad() {
        print("Survey Start Load")
    }
    
    func didSurveyFinishLoad() {
        print("Survey Finish Load")
    }
    
    func didSurveyCompleted() {
        self.navigationController?.popViewController(animated: true)
    }

}

