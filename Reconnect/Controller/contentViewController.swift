//
//  contentViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/10/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift
import Firebase

class contentViewController: UIViewController, UINavigationControllerDelegate, SegueHandler, UITextViewDelegate {
    
  
    
    
    func segueToNext(with identifier: String) {
        performSegue(withIdentifier: identifier, sender: self)
    }
    
    
    var noteNumber: Int?
    
    var noteName: String?
    
    var firstLogin: Bool?

//    var notesDict: [Int: Note] = [1: (), 2: (), 3: (), 4: (), 5: (), 6: (), 7: ()]
    
    
//    var managedObjectContext: NSManagedObjectContext {
//
//        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//
//    }
    

//    var note1 = NSEntityDescription.insertNewObjectForEntityForName("Note", inManagedObjectContext: NSManagedObjectContext)
//
//    var note2: Note? = Note()
//
//    var note3: Note? = Note()
//
//    var note4: Note? = Note()
//
//    var note5: Note? = Note()
//
//    var note6: Note? = Note()
//
//    var note7: Note? = Note()
//
    
    
    
    var notes : Results<Notes>?
    
    let realm = try! Realm()
    
    
    
    
    
    
    

    @IBOutlet weak var bibleVerseText: UITextView!
    @IBOutlet weak var noteText: UITextView!
    @IBOutlet weak var noteComText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = noteName!
        
        saveButton.isEnabled = false
        
        if noteName == "Closing" {
            
            saveButton.isEnabled = true
        }
        
       
            
    }

    
//        if notes[noteNumber!].noteDesc != "" {
//
//            presentItems()
//
//
//
//
//        } else {
//
//            bibleVerseText.text = ""
//            noteText.text = ""
//            noteComText.text = ""
//
//        }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        

        
        saveItems()
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let noteInit = Notes()
        let noteInit2 = Notes()
        let noteInit3 = Notes()
        let noteInit4 = Notes()
        let noteInit5 = Notes()
        let noteInit6 = Notes()
        let noteInit7 = Notes()
        
        
        
        
        
        if firstLogin != true {
            
            do {
                try self.realm.write {
                    realm.add(noteInit)
                    realm.add(noteInit2)
                    realm.add(noteInit3)
                    realm.add(noteInit4)
                    realm.add(noteInit5)
                    realm.add(noteInit6)
                    realm.add(noteInit7)
                    
                    firstLogin = true
                    
                }
                
            } catch {
                print(error)
            }
            
            
        }

   
        loadItems()
        
        presentItems()
       

    }

    func textViewDidEndEditing(_ textView: UITextView) {
    


        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var saveButtonPressed: UIBarButtonItem!
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        
        saveItems()
        
        
        
        
        for a in 0...6 {
        
      
        
        let myEmail = "\(Auth.auth().currentUser?.email)"
        
        let myEmailEncoded = myEmail.replacingOccurrences(of: ".", with: ",")
        
        let myDatabase = Database.database().reference().child(myEmailEncoded).child("Notes")
        
        let notes1 = ["Note Title" : notes![a].noteTitle,
                      "Bible Verse" : notes![a].bibleVerse,
                      "Note Content" : notes![a].noteDesc,
                      "Note Commitment" : notes![a].noteCom] as [String : String]
        
        myDatabase.childByAutoId().setValue(notes1) {
            (error, reference) in
            
            if error != nil {
                
                print(error)
                
            } else {
                
                print("Notes saved successfully")
                
                self.saveButton.isEnabled = false
                
            }
            
            
        }
            
        }
        
        
        
    }
    
    
//    func fillItems() {
//
//        if noteNumber != nil {
//
////      let noteNumberAdded = noteNumber!+1
//
//        let note = Notes()
//        note.bibleVerse = bibleVerseText.text
//        note.noteDesc = noteText.text
//        note.noteCom = noteComText.text
//        note.noteTitle = noteName!
//
//
//
//
//
//
//
//
//
//        } else {
//
//            print("noteNumber nil")
//        }
//
//
//
//
//
//    }
    
    
    
    func presentItems() {
        
        if noteNumber != nil {
            
            bibleVerseText.text = notes![noteNumber!].bibleVerse
            noteText.text = notes![noteNumber!].noteDesc
            noteComText.text = notes![noteNumber!].noteCom
            
            
        }
    }
    
    
    func saveItems() {
        

//        managedObjectContext.perform {
//            do {
//                try self.managedObjectContext.save()
//            } catch {
//                print("Failed to save item \(error.localizedDescription)")
//            }
//        }
        
        do {
            
            try realm.write {
                notes![noteNumber!].bibleVerse = bibleVerseText.text
                notes![noteNumber!].noteDesc = noteText.text
                notes![noteNumber!].noteCom = noteComText.text
                notes![noteNumber!].noteTitle = noteName!
            }
                
            } catch {
                
                print(error)
            }
            
        }
    
    
    
    func loadItems() {
        
        
//        managedObjectContext.perform {
//
//            let request: NSFetchRequest<Note> = Note.fetchRequest()
//            do {
//                self.notes = try self.managedObjectContext.fetch(request)
//
//
//            }
//            catch {
//
//                print("Error loading items \(error.localizedDescription)")
//            }
//        }
        notes = realm.objects(Notes.self)
        
        
    }
    

    
}
