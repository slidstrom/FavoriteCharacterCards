//
//  CharacterModel.swift
//  FavoriteCharacterCards
//
//  Created by DSIAdmin on 12/16/21.
//

import Foundation
import SwiftUI

class CharacterModel: ObservableObject {
    
    @Published var characters = [Character]()
    
    init(){
        self.characters = getLocalData()
        
    }
    
    func getLocalData() -> [Character]{
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString{
            
            let url = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do{
                    let characterData = try decoder.decode([Character].self, from: data)
                    return characterData
                }
                catch{
                    print(error)
                }
                
            }
            catch{
                print(error)
            }
            
        }
        return [Character]()
    }
    
    func updateFavorite(forId: Int){
        if let index = characters.firstIndex(where: {$0.id == forId}){
            characters[index].isFavorite.toggle()
        }
    }
    
}
