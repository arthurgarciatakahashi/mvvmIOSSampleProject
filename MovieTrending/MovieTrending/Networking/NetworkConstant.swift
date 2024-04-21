//
//  NetworkConstant.swift
//  MovieTrending
//
//  Created by arthur takahashi on 19/04/24.
//

import Foundation

class NetworkConstant {
    
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        //singleton
        
    }
    
    public var apiKey: String {
        get {
            return "c5d70a51e9b86bd39e8bf1e06be302f0" // aqui fica a apikey em themovie.org
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/" // na documentacao
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
