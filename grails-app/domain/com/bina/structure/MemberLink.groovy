package com.bina.structure

class MemberLink {
    Date dateCreated
    
    static belongsTo = [
        company: Business,
        member: Member
    ]
    
    static constraints = {
        dateCreated     nullable: true
    }
    
    public String toString() {
        "${company?.name}: ${member?.name}"
    }
}
