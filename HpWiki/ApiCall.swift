//
//  ApiCall.swift
//  HpWiki
//
//  Created by Besmir Kadrii on 07.05.22.
//

import Foundation

class ApiCall {
    func fetchData(completion:@escaping ([Character]) -> ()) {
        guard let url = URL(string: "http://hp-api.herokuapp.com/api/characters") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let chars = try! JSONDecoder().decode([Character].self, from: data!)
            print(chars)
            
            DispatchQueue.main.async {
                completion(chars)
            }
        }
        .resume()
    
    }
    
}
