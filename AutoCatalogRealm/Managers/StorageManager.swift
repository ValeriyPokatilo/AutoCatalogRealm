//
//  StorageManager.swift
//  AutoCatalogRealm
//
//  Created by Valeriy Pokatilo on 16.09.2020.
//  Copyright © 2020 Valeriy Pokatilo. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveObject(_ car: Car) {
        try! realm.write {
            realm.add(car)
        }
    }
    
    static func deleteObject(_ car: Car) {
        try! realm.write {
            realm.delete(car)
        }
    }
}

