//
//  Sports.swift
//  MHSSchool app v1.3
//
//  Created by The Soul of Fire on 5/13/17.
//  Copyright © 2017 DasCO. All rights reserved.
//

import UIKit

class Sports: UIViewController {


    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

         var url =  NSURL (string : "http://www.morgantownmohigans.com/main/calendar")
         var request = NSURLRequest (url:url as! URL);
        webView.loadRequest(request as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}