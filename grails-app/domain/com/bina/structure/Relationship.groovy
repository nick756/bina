package com.bina.structure

class Relationship {

    Integer code
    String name
    Integer level
    boolean active = true
    
    static constraints = {
        name nullable: false
        code nullable: false
    }
    
    public String toString() {
        name
    }
}
