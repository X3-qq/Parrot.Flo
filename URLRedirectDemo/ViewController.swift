//
//  ViewController.swift
//  URLRedirectDemo
//
//  Created by Tula Weerasooriya on 2020-05-20.
//  Copyright © 2020 Tula Weerasooriya. All rights reserved.
//

import WebKit

class ViewController: WebViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Open the url which contains the re-direct code
//        loadURL(pageURL: URL.init(string: "https://yourdomain.net/testredirect.html"))
        
        // Load HTML
        let html = "<html><head><script> function myFunction() { window.location.href = 'https://sshwifty.herokuapp.com'; } </script></head><body onload='myFunction();'></body></html>"
        loadHTML(htmlString: html)
    }
}

class ViewController1: WebViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Open the url which contains the re-direct code
//        loadURL(pageURL: URL.init(string: "https://yourdomain.net/testredirect.html"))
        
        // Load HTML
        let html = "<html><head><script> function myFunction() { window.location.href = 'https://salla.sa/flaah999/gKOwrj'; } </script></head><body onload='myFunction();'></body></html>"
        loadHTML(htmlString: html)
    }
}

class ViewController2: WebViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Open the url which contains the re-direct code
//        loadURL(pageURL: URL.init(string: "https://yourdomain.net/testredirect.html"))
        
        // Load HTML
        let html = "<html><head><script> function myFunction() { window.location.href = 'https://reachnetwork.co/ar/0xfff0800'; } </script></head><body onload='myFunction();'></body></html>"
        loadHTML(htmlString: html)
    }
}

class ViewController3: WebViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Open the url which contains the re-direct code
//        loadURL(pageURL: URL.init(string: "https://yourdomain.net/testredirect.html"))
        
        // Load HTML
        let html = "<html><head><script> function myFunction() { window.location.href = 'https://altstore.io'; } </script></head><body onload='myFunction();'></body></html>"
        loadHTML(htmlString: html)
    }
}


class ViewController4: WebViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Open the url which contains the re-direct code
//        loadURL(pageURL: URL.init(string: "https://yourdomain.net/testredirect.html"))
        
        // Load HTML
        let html = "<html><head><script> function myFunction() { window.location.href = 'https://github.com/996icu/996.ICU/#what-can-i-do'; } </script></head><body onload='myFunction();'></body></html>"
        loadHTML(htmlString: html)
    }
}


class ViewController5: WebViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Open the url which contains the re-direct code
//        loadURL(pageURL: URL.init(string: "https://yourdomain.net/testredirect.html"))
        
        // Load HTML
        let html = "<html><head><script> function myFunction() { window.location.href = 'https://www.paypal.me/xfff0800'; } </script></head><body onload='myFunction();'></body></html>"
        loadHTML(htmlString: html)
    }
}
// MARK: - WKNavigationDelegate

extension ViewController {
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        /*
         Use this delegate method to intercept the url requests
         */
        if let url = navigationAction.request.url {
            var navigationType = ""
            switch navigationAction.navigationType {
            case .backForward:
                navigationType = "back/foward"
            case .formSubmitted:
                navigationType = "form submitted"
            case .formResubmitted:
                navigationType = "form re-submitted"
            case .linkActivated:
                navigationType = "user tapped on link"
            case .other:
                navigationType = "navigation type other"
            case .reload:
                navigationType = "reload"
            @unknown default:
                navigationType = "navigation type unknown"
            }
            let lineNumber = #file + " line " + "\(#line)"
            print(lineNumber + ": " + navigationType + " " + url.absoluteString)
        }
        
        /*
         Use the decision handler to block/allow the request
         */
        decisionHandler(.allow)
    }
}



