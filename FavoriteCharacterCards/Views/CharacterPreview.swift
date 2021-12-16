//
//  CharacterPreview.swift
//  FavoriteCharacterCards
//
//  Created by DSIAdmin on 12/16/21.
//

import SwiftUI

struct CharacterPreview: View {
    
    @EnvironmentObject var model:CharacterModel
    var character:Character
    
    var body: some View {
        
        ZStack{
            Rectangle().foregroundColor(.white)
                .opacity(0.5)
                .cornerRadius(15).shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
            
            VStack{
                Spacer()
                Text(character.name)
                Spacer()
                Image(character.image)
                Spacer()
                Text(String(character.id))
                Spacer()
                if character.isFavorite{
                    Image(systemName: "star.fill")
                }
                Spacer()
            }
        }.padding()
    
    }
}

struct CharacterPreview_Previews: PreviewProvider {
    static var previews: some View {
        let model = CharacterModel()
        let character = model.characters[0]
        
        CharacterPreview(character: character).environmentObject(CharacterModel())
    }
}
