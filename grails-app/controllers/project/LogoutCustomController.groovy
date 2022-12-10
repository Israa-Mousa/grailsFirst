package project

class LogoutCustomController {

    def index() {
        request.logout() // Logout current user
        redirect(controller: 'home', action: 'index') // Redirect to the home page

    }
    def logoutMe(){
        println("israa test")
        request.logout() // Logout current user
        redirect(controller: 'login', action: 'auth') // Redirect to the home page
    }
}
