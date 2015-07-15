package com.bina.structure

/*
    The only Entity for managing access to the System, conditional navigation
    by User.role
*/
class User implements Serializable {

    String name
    String login
    String passw
    String contactNo
    String email
    
    UserRole role
    
    static constraints = {
        name        nullable: false
        login       nullable: false, unique: true
        passw       nullable: false, blank: false, password: true, size: 4..10
        contactNo   nullable: true
        email       email: true, nullable: true
        role        nullable: false, blank: false
    }
    
    public String toString() {
        login + ": " + name
    }
}
