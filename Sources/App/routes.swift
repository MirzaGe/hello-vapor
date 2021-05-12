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
    
}
