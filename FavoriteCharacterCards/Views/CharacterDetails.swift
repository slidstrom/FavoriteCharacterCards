//
//  CharacterDetails.swift
//  FavoriteCharacterCards
//
//  Created by DSIAdmin on 12/16/21.
//

import SwiftUI

struct CharacterDetails: View {
    
    @EnvironmentObject var model:CharacterModel
    var character:Character
    
    var body: some View {
        Button {
            model.updateFavorite(forId: character.id)
            
        } label: {
            if character.isFavorite == true{
                Image(systemName: "star.fill")
            }
            else{
            Image(systemName: "star")
            }
        }

    }
}

struct CharacterDetails_Previews: PreviewProvider {
    static var previews: some View {
        let model = CharacterModel()
        let character = model.characters[0]
        CharacterDetails(character: character)
    }
}
