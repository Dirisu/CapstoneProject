//
//  AdviceSlipClient.swift
//  CapstoneProject
//
//  Created by Marvellous Dirisu on 04/07/2022.
//

import Foundation

struct AdviceSlipClient {
    
    func getAdvice() {
        
        let urlString = "https://api.adviceslip.com/advice"
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                
            
            }
        }
    }
    
    
}
