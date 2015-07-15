package com.bina.structure

class UserRole {
    String name
    Integer code
    
    static constraints = {
        name    nullable: false
        code    nullable: false
    }
    
    public String toString() {
        code + ": " + name
    }
}
