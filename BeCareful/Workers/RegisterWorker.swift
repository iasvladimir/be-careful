//
//  RegisterWorker.swift
//  BeCareful
//
//  Created by Eduardo Pacheco on 03/06/20.
//  Copyright (c) 2020 IA Interactive. All rights reserved.
//

import Foundation

class RegisterWorker {
    
    private var networkClient: APIProtocol

    init(networkClient: APIProtocol) {
        self.networkClient = networkClient
    }
    
    // MARK: - Public Methods
    func validatePhone(phoneNumber: String) -> Bool {
        let phoneNumberRegex = "^[0-9]{10}$"
        let trimmedString = phoneNumber.trimmingCharacters(in: .whitespaces)
        let validate = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
        let isValidPhone = validate.evaluate(with: trimmedString)
        return isValidPhone
    }
    
    func isValidCode(code: String) -> Bool {
        return !code.isEmpty && code.count == 11
    }
    
    func completeRegister(data: RegisterOTP, completion: @escaping (_ error: Error?) -> Void) {
        networkClient.validateRegister(with: data) { result in
            switch result {
            case .success(let register):
                AppUserDefaults.isRegister = true
                AppUserDefaults.code = Int(data.otp) ?? 0
                AppUserDefaults.token = register.token
                completion(nil)
            case .failure(let error):
                completion(error)
            }
        }
    }
}
