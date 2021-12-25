//
//  Service.swift
//  StackChat
//
//  Created by Алексей Глазунов on 25.12.2021.
//

import UIKit
import Firebase
import FirebaseAuth


class Service{
    static let shared = Service()
    init() {}
    
    
    
    
    func createNewUser(_ data: LoginField, completion: @escaping (ResponceCode)->()){
        Auth.auth().createUser(withEmail: data.email, password: data.password) { [weak self] result, err in
            if err == nil {
                if result != nil {
                    let userId = result?.user.uid
                    completion(ResponceCode(code: 1))
                }
            } else {
                completion(ResponceCode(code: 0))
            }
        }
    }
}
