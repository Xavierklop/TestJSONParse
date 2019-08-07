//
//  ParseStruct.swift
//  TestJSONParse
//
//  Created by Hao Wu on 07.08.19.
//  Copyright © 2019 Hao Wu. All rights reserved.
//

import Foundation

struct AlbumLookupResponse: Decodable {
    let resultCount: Int
    let results: [ArtistOrAlbum]
}

enum ArtistOrAlbum: Decodable {
    case artist(ItunesArtist)
    case album(ItunesAlbum)
}

extension ArtistOrAlbum {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        do {
            self = try .artist(container.decode(ItunesArtist.self))
        } catch {
            do {
                self = try .album(container.decode(ItunesAlbum.self))
            } catch {
                throw DecodingError.typeMismatch(ArtistOrAlbum.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Encoded payload conflicts with expected type, (ItunesArtist or ArtistAlbum)") )
            }
        }
    }
}

struct ItunesArtist: Decodable {
    let artistName: String
    let artistId: Int
    let primaryGenreId: Int
    let primaryGenreName: String
}

struct ItunesAlbum: Decodable {
    let id: Int
    let artistName: String
    let name: String
    let censoredName: String
    let artworkUrl: String
    let isExplicit: Bool
    let numberOfTracks: Int
    let releaseDate: Date
    let primaryGenre: String
    
    enum CodingKeys: String, CodingKey {
        case id = "collectionId"
        case artistName
        case name = "collectionName"
        case censoredName = "collectionCensoredName"
        case artworkUrl = "artworkUrl100"
        case isExplicit = "collectionExplicitness"
        case numberOfTracks = "trackCount"
        case releaseDate
        case primaryGenre = "primaryGenreName"
    }
}
