//
//  ViewCoding.swift
//  MVVMQuoteExample
//
//  Created by Paulo Henrique Gomes da Silva on 01/02/23.
//

import Foundation

protocol ViewCoding {
    func setupView()
    func setupHierarchhy()
    func setupConstraints()
}

extension ViewCoding {
    func buildLayout() {
        setupView()
        setupHierarchhy()
        setupConstraints()
    }
}
