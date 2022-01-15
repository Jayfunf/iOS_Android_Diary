//
//  LoginVM.swift
//  iOS_Android_Diary
//
//  Created by Minhyun Cho on 2022/01/12.
//

import Foundation
import Alamofire

// codable이 아닌 JSONSerialization을 사용한 이유 -> JSON의 형식이 codable을 쓸 만큼 복잡하지 않다.
// reference를 참조하여 차이 다시 생각하자.
func login(ID:String){
    let url = "test"
    var request = URLRequest(url: URL(string: url)!)
    request.httpMethod = "POST"
    request.setValue("application/data", forHTTPHeaderField: "Content-Type")
    request.timeoutInterval = 10
    
    let params = ["id": "아이디", "pw": "패스워드"] as Dictionary
    
    do{
        try request.httpBody = JSONSerialization.data(withJSONObject: params, options: [])
        // codable? JSONSerialization?
    } catch {
        print("http Body Error")
    }
    AF.request(request).responseString{ (response) in
        switch response.result{
        case .success:
            print("Success")
        case .failure:
            print("Fail")
        }
    }
}
