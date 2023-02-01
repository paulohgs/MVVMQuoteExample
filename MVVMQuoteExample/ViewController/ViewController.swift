//
//  ViewController.swift
//  MVVMQuoteExample
//
//  Created by Paulo Henrique Gomes da Silva on 01/02/23.
//

import UIKit

class ViewController: UIViewController {

    let quoteView = QuoteView()
    let quoteViewModel = QuoteViewModel()

    override func loadView() {
        view = quoteView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        quoteView.didTapHandler = { [weak self] in
            self?.quoteViewModel.getQuote()
        }
        quoteViewModel.bind = { [weak self] quoteModel in
            self?.quoteView.configureView(model: quoteModel)
        }
    }
}

