package com.bina.structure

import com.bina.structure.User

class LoginController {

    def index = { 
        if(params.lang) {
            //println "Locale set: " + newLocale
        }
        else {
            //println "Locale remains unchanged"
        }
    }
    
    def process = {LoginCommand cmd ->
        
        if(session?.user) {
            render(view: 'index')
        }
        else {
            if(request.method == 'POST') {
                if(!cmd.hasErrors()) {
                    session.user = cmd.getUser()
                    //session.company = session?.user.company

                    if(session?.user) {
                        switch (session?.user.role.code) {
                            case 1: redirect(controller: 'business')
                                    break
                            case 2: //redirect(controller: 'smeHome')
                                    break
                        }
                        //session.setMaxInactiveInterval(600)
                        //redirect(uri: '/')
                    }
                }
                else {
                    render(view: '/login/index', model: [loginCmd: cmd])
                }
            }
            else {
                render(view: '/login/index')
            }
        }        
    }
    
    def logout = {
        session.invalidate()
        redirect(action: 'index')        
    }
    
}

class LoginCommand {

    String login
    String passw
    private u

    User getUser() {
        if(!u && login) {
            u = User.findByLogin(login)
        }

        return u
    }

    static constraints = {
        login(blank: false, validator: {val, cmd ->
                if(!cmd.user) {
                    return "user.not.found"
                }
            })
        passw(blank: false, validator: {val, cmd ->
                if(cmd.user && cmd.user.passw != val) {
                    return "user.password.invalid"
                }
            })
    }
}
