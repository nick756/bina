package com.bina.structure

class State {

    Integer code
    String name
    String shortName
    boolean active = true
    
    static constraints = {
        name nullable: false
        code nullable: false
    }
    
    public String toString() {
        name
    }
}
