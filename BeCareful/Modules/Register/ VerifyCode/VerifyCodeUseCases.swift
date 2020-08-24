//
//  VerifyCodeUseCases.swift
//  BeCareful
//
//  Created by Mariana Parente on 24/08/20.
//  Copyright (c) 2020 Jose Alberto. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

enum VerifyCode {
    // MARK: Use cases
    
    enum DataPhoneNumber {
        struct Response {
            var phoneNumber: String
        }
        struct ViewModel {
            var title: String
        }
    }

    enum RegisterSuccess {
        struct Request {
            var code: String
        }
        struct Response {
            var errorMessage: String
        }
        struct ViewModel {
            var errorMessage: String
        }
    }
}