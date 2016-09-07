//
//  Sites.swift
//  SwiftGrailDiary
//
//  Created by Tyler on 8/17/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import Foundation

class Sites
{

    let site: String
    let location: String
    let year: String
    let fact: String
    
    init(dictionary: NSDictionary)
    {
        site = dictionary["site"] as! String
        location = dictionary["location"] as! String
        year = dictionary["year"] as! String
        fact = dictionary["fact"] as! String
    }
    
}
