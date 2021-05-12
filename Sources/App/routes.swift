import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
        
    }
        // http
        app.get("movies","genre","comedy")
        {
            req in return "/the great khali"
        }
    
    app.get("foo","*","baz") { req in
        return "Foo BazZ"
    }
    
    app.get("search") { req -> String in
        guard let keyword = req.query["keyword"] as String?,
              let page = req.query["page"] as Int? else {
            throw Abort(.badRequest)
            
        }
        return "keyword = \(keyword) and page => \(page)"
    }
    
}
