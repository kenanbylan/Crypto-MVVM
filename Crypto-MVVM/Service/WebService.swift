//
//  WebService.swift
//  Crypto-MVVM
//
//  Created by Kenan Baylan on 19.12.2022.
//

import Foundation

class WebService {
    
    //@escaping ; callback function
    func downloadCurrencies(url : URL , completion : @escaping ([CryptoCurrency]?) -> () ) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("error have it.",error.localizedDescription)
                completion(nil) // data is not
                
            } else if let data = data {
                
                let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
            }
            
        }.resume() //işlemi başlatmak için kullanılır.
    }
}



