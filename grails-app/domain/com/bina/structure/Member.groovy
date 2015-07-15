package com.bina.structure

class Member {
    
    String name
    IDType  idType
    String idNumber
    Date birthDate
    Date deathDate
    Gender  gender
    Race race
    Nationality nationality
    Religion religion
    EducationLevel education
    String address1
    String address2
    String address3
    String town
    Integer postcode
    String phone
    String mobile
    String email
    String remarks
    Boolean active
    
    static hasMany = [
        companies: MemberLink
    ]
    
    static constraints = {
        name            nullable: false, blank: false
        education       nullable: true, display: false
        deathDate       nullable: true, display: false
        address2        nullable: true, display: false
        address3        nullable: true, display: false
        phone           nullable: true, display: false
        mobile          nullable: true, display: false
        email           nullable: true, display: false
        remarks         nullable: true, display: false
        
        idType          nullable: true
        idNumber        nullable: true
        //companies       nullable: true, display: true
        birthDate       nullable: true, display: false
        companies       nullable: true, display: false
        gender          nullable: true, display: false
        race            nullable: true, display: false
        nationality     nullable: true, display: false
        religion        nullable: true, display: false
        address1        nullable: true, display: false
        town            nullable: true, display: false
        postcode        nullable: true, display: false
        active          nullable: true, display: false
    }
    
    public String toString() {
        name
    }
}
