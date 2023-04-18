//
//  AddView.swift
//  NotesApp_SUI
//
//  Created by Students on 18.03.2023.
//

import SwiftUI

struct AddView: View {
    
    @State private var newFolder = ""
    @Environment(\.dismiss) var dismiss
    
    @Binding var showAddFolder: Bool
    
    var body: some View {
        
        VStack {
            
            Button {
               showAddFolder = false
            } label: {
                Text("Cancel")
            }

        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
               cancelButton
            }
            ToolbarItem(placement: .navigationBarLeading) {
               cancelButton
            }
        }
        
        
        
        
//        Text("Crying")
//        NavigationView {
//            VStack {
//                TextField("New Folder", text: $newFolder)
// //                   .toolbar {
////                        ToolbarItem(placement: .navigationBarLeading) {
////                                    Button(action: dismiss(), label: Text("Cancel"))
////                        }
//        //                ToolbarItem(placement: .navigationBarLeading) {
//        //                    Button {
//        //                        // code to save data
//        //                    } label: {
//        //                        Text("Done")
//        //                    }
//        //
//        //                }
//         //           }
////            }
//        }
    }
    
    var cancelButton: some View {
        Button {
           showAddFolder = false
        } label: {
            Text("Cancel")
        }
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(showAddFolder: .constant(true))
    }
}
