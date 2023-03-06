//
//  User.swift
//  GHFollwers
//
//  Created by Anıl AVCI on 25.02.2023.
//

import Foundation

struct User: Codable {
   let login: String
   let avatarUrl: String
   let name: String?
   var location: String?
   var bio: String?
   let publicRepos: Int
   let publicGists: Int
   let htmlUrl: String
   let following: Int
   let followers: Int
   let createdAt: String
}
