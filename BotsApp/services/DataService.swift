//
//  DataService.swift
//  BotsApp
//
//  Created by mac on 15/02/2018.
//  Copyright © 2018 mouhebJaziri. All rights reserved.
//

import Foundation
import Firebase

let DB = Database.database().reference()

class DataService {
    static let instance = DataService()
    private var _ref_base = DB
    private var _ref_users = DB.child("users")
    var ref_base : DatabaseReference {
        return _ref_base
    }
    var ref_users : DatabaseReference {
        return _ref_users
    }
    
    func createDBUser(uid:String,userData:Dictionary<String,Any>){
        ref_users.child(uid).updateChildValues(userData)
    }
}
