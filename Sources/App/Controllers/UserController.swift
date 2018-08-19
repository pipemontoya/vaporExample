//
//  UserController.swift
//  App
//
//  Created by Andres Montoya on 8/19/18.
//

import Foundation
import Vapor

final class UserController {
    static func list(_ req: Request) throws -> Future<View>{
        return User.query(on: req).all().flatMap({ users in
            let data = ["userlist": users]
            return try req.view().render("userview", data)
        })
    }
    
    static func create(_ req: Request) throws -> Future<Response> {
        return try req.content.decode(User.self).flatMap({ user in
            return user.save(on: req).map({ _ in
                return req.redirect(to: "users")
            })
        })
    }
}
