//
//  RegisterPresenter.swift
//  BeCareful
//
//  Created by Carlos David Barròn Villegas on 20/08/20.
//  Copyright (c) 2020 Jose Alberto. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol RegisterPresentationLogic {
    func presentVerifyCode()
    func presentError()
}

class RegisterPresenter: RegisterPresentationLogic {
    weak var viewController: RegisterDisplayLogic?

    // MARK: Display Verify Code

    func presentVerifyCode() {
        viewController?.displayVerifyCode()
    }
    
    func presentError() {
        viewController?.showError()
    }
}
