//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Furkan buğra karcı on 14.08.2024.
//

import Foundation
import Alamofire
class JokesViewModel:ObservableObject{
    //observebleobject yapınca bu classın içinde de ekranda göstermek istediğin yeri de publish edince ekranda onu gösterebiliyoz
   @Published var jokes=[Value]()
    
    
    init(){
        getJokes()
    }
    
    
    func getJokes(){
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json",method: .get).responseDecodable(of:Welcome.self) { response in
            
            switch response.result{
            case .success(let data):
            
                let value =  data.value
                self.jokes += value
            
            case.failure(let error):
                print(error)
            }
        }
    }
}
