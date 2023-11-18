import UIKit
import WebKit

class WebViewController: UIViewController {
    var webView: WKWebView!
    var url: URL?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = self.url {
            webView.load(URLRequest(url: url))
        }
    }
}
