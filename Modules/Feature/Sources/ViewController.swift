//
//  ViewController.swift
//  BazelDemo
//
//  Created by Billy on 12/10/21.
//

import Core
import RxSwift
import UIKit

public class ViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray

        "sdafs".trimmingCharacters(in: .whitespacesAndNewlines)

        print([1, 2, 3].sum())
    }
}

