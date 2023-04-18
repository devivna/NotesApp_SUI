//
//  ContentView.swift
//  NotesApp_SUI
//
//  Created by Students on 18.03.2023.
//

import SwiftUI

struct MainView: View {
    
    var folders = ["All iCloud", "Notes", "Quick Notes", "Other Notes" ]
    @State private var searchField = ""
    @State var showAddFolder = false
    @State var showNewItem = false
    
    var body: some View {
        NavigationView {
            
            List {
                TextField(text: $searchField) {
                    Label("Search", systemImage: "magnifyingglass")
                }
                
                TextField( "Search", text: $searchField )
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                
                Section {
                    ForEach(folders, id: \.self) { folderName in
                        FolderCell(name: folderName)
                    }
                } header: {
                    Text("iCloud")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                //.textCase(nil)
                
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Folders")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        showAddFolder.toggle()
                    } label: {
                        Image(systemName: "folder.badge.plus")
                    }
                    .sheet(isPresented: $showAddFolder) {
                        // ?? NavView
                        NavigationView {
                            AddView(showAddFolder: $showAddFolder)
                            }
                        }
//
//                        ToolbarItem(placement: .bottomBar) {
//                            Button {
//                                showNewItem.toggle()
//                            } label: {
//                                Image(systemName: "square.and.pencil")
//                            }
//                            .sheet(isPresented: $showNewItem) {
//                                NavigationLink("", destination: NewItemView())
//                            }
//
//                        }
//                    }
                }
                
                
                //                ToolbarItemGroup(placement: .bottomBar) {
                //                    Group {
                //                        Image(systemName: "folder.badge.plus")
                //                            .sheet(isPresented: $isAdd) {
                //                                AddView()
                //                            }
                //
                //                        Image(systemName: "square.and.pencil")
                //                    }
                //                    .foregroundColor(.orange)
                //                    .padding()
                //                    .tint(Color.orange)
                //               }
            }
            .tint(.orange)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct FolderCell: View {
    var name: String
    var body: some View {
        HStack {
            Image(systemName: "folder")
            Text(name)
        }
    }
}
