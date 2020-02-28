//
//  Story.swift
//  Destini
//
//  Created by Владимир Коваленко on 26.02.2020.
//  Copyright © 2020 Vladimir Kovalenko. All rights reserved.
//

import Foundation


struct Story{
    let  storyzero : String
    var choice1 : String
    var choice2 : String
    
    
    init (title: String, ch1 : String , ch2 : String){
        storyzero = title
        choice1 = ch1
        choice2 = ch2
        
    }
    
    
}
