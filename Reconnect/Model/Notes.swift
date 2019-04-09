//
//  Notes.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/22/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import Foundation
import RealmSwift

class Notes: Object {
    
    @objc dynamic var noteTitle : String = ""
    @objc dynamic var bibleVerse : String = ""
    @objc dynamic var noteDesc : String = ""
    @objc dynamic var noteCom : String = ""
    
}
