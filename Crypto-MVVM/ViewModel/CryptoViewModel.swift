//  CryptoViewModel.swift
//  Crypto-MVVM
//  Created by Kenan Baylan on 19.12.2022.


import Foundation


struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency] //bir array tanımlandı..
}
//extension nedir ? Daha önceden oluşturulmuş bir yapıya eklenti oluşturmaya sağlar.
extension CryptoListViewModel {
    //coin miktarını döndürür.
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
        
    }
        
    //Dizi olan model ile index olan model birbirine bağlandı..
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel.init(cryptoCurrency: crypto)
    }
}





struct CryptoViewModel {
    let cryptoCurrency : CryptoCurrency
}

extension CryptoViewModel {
    
    var name : String {
        return cryptoCurrency.currency
    }
    
    var price : String {
        return cryptoCurrency.price
    }
    
}
