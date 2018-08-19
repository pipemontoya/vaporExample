import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
//    // Basic "Hello, world!" example
//    router.get("view") { req -> Future<View> in
//        return try req.view().render("welcome")
//    }
//
//    router.get("bonus") { req -> Future<View> in
//        let dev = Person(name: "Andres", age: 27)
//        return try req.view().render("whoami", dev)
//    }
//
//    // Example of configuring a controller
//    let todoController = TodoController()
//    router.get("todos", use: todoController.index)
//    router.post("todos", use: todoController.create)
//    router.delete("todos", Todo.parameter, use: todoController.delete)
   
    router.get("users", use: UserController.list)
    router.post("users", use: UserController.create)
    
}

//struct Person: Content {
//    var name: String
//    var age: Int
//}


