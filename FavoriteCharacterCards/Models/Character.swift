//
//  Character.swift
//  FavoriteCharacterCards
//
//  Created by DSIAdmin on 12/16/21.
//

import Foundation

struct Character: Identifiable, Decodable {
    
    var id:Int
    var name:String
    var image:String
    var isFavorite:Bool
}
