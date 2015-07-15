package com.bina.structure

class AdminController {

    def index(Integer max) { 
        if(!session.user) {
            redirect controller: 'login'
        }
        
        params.max = Math.min(max ?: 10, 100)
        
        [businessList: Business.list(params), businessCount: Business.count()]
    }
}
