//
//  LibraryView.swift
//  FavoriteCharacterCards
//
//  Created by DSIAdmin on 12/16/21.
//

import SwiftUI

struct LibraryView: View {
    
    @EnvironmentObject var model:CharacterModel
    
    var body: some View {
        
        NavigationView{
            ScrollView {
                LazyVStack {
                    ForEach(model.characters){ character in
                        
                        
                        NavigationLink {
                            CharacterDetails(character: character)
                        } label: {
                            CharacterPreview(character: character)
                        }
                        
                        
                    }
                }
            }.navigationTitle("Characters")
            
            
            
        }.navigationViewStyle(.stack)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView().environmentObject(CharacterModel())
    }
}
