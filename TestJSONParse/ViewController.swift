//
//  ViewController.swift
//  TestJSONParse
//
//  Created by Hao Wu on 07.08.19.
//  Copyright © 2019 Hao Wu. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // test
        let decoder = JSONDecoder()
        let result = try! decoder.decode(AlbumLookupResponse.self, from: jsonData)
    }

    let jsonData = """
{
 "resultCount":3,
 "results": [
{"wrapperType":"artist", "artistType":"Artist", "artistName":"Taylor Swift", "artistLinkUrl":"https://music.apple.com/us/artist/taylor-swift/159260351?uo=4", "artistId":159260351, "amgArtistId":816977, "primaryGenreName":"Pop", "primaryGenreId":14},
{"wrapperType":"collection", "collectionType":"Album", "artistId":159260351, "collectionId":1440935467, "amgArtistId":816977, "artistName":"Taylor Swift", "collectionName":"1989", "collectionCensoredName":"1989", "artistViewUrl":"https://music.apple.com/us/artist/taylor-swift/159260351?uo=4", "collectionViewUrl":"https://music.apple.com/us/album/1989/1440935467?uo=4", "artworkUrl60":"https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/9c/91/83/9c918303-e0a4-2d4b-97d6-f986b9fba604/source/60x60bb.jpg", "artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/9c/91/83/9c918303-e0a4-2d4b-97d6-f986b9fba604/source/100x100bb.jpg", "collectionPrice":10.99, "collectionExplicitness":"notExplicit", "trackCount":14, "copyright":"℗ 2014 Big Machine Records, LLC.", "country":"USA", "currency":"USD", "releaseDate":"2014-10-27T07:00:00Z", "primaryGenreName":"Pop"},
{"wrapperType":"collection", "collectionType":"Album", "artistId":159260351, "collectionId":1440933849, "amgArtistId":816977, "artistName":"Taylor Swift", "collectionName":"reputation", "collectionCensoredName":"reputation", "artistViewUrl":"https://music.apple.com/us/artist/taylor-swift/159260351?uo=4", "collectionViewUrl":"https://music.apple.com/us/album/reputation/1440933849?uo=4", "artworkUrl60":"https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/0a/88/9f/0a889fdf-b594-6b7a-d05d-a6c5d6625649/source/60x60bb.jpg", "artworkUrl100":"https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/0a/88/9f/0a889fdf-b594-6b7a-d05d-a6c5d6625649/source/100x100bb.jpg", "collectionPrice":13.99, "collectionExplicitness":"notExplicit", "trackCount":15, "copyright":"℗ 2017 Big Machine Label Group, LLC", "country":"USA", "currency":"USD", "releaseDate":"2017-11-10T08:00:00Z", "primaryGenreName":"Pop"}]
}
""".data(using: .utf8)!
    
    
    
    
}

