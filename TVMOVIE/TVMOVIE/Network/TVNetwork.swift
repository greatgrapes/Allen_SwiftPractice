//
//  TVNetwork.swift
//  TVMOVIE
//
//  Created by 박진성 on 11/5/23.
//

import Foundation
import RxSwift

final class TVNetwork {
    
    private let network: Network<TVListModel>
    
    init(network: Network<TVListModel>) {
        self.network = network
    }
    
    func getTopRatedList() -> Observable<TVListModel> {
        return network.getItemList(path: "/tv/top_rated")
    }
    
}

// endpoint = "https://api.themoviedb.org/3\(path)"

