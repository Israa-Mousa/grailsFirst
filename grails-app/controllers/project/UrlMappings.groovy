package project

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
       "/login/$action?"(controller:"login")
        "/logout/$action?"(controller:"logout")
        "/"(controller:"HomeController", view:"/index")


//        "/"(view:"/login/auth")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
