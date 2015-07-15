package com.bina.structure

class Industry {

    Integer code
    String name
    boolean active = true
    
    static constraints = {
        name nullable: false
        code nullable: false
    }
    
    public String toString() {
        name
    }
}
