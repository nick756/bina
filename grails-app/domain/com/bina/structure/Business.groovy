package com.bina.structure

class Business {
    
    String name
    String rocNo
    Date incorporation
    BusinessType type
    Industry industry
    Integer latestRevenue
    String mofNo
    Float authCapital
    Float paidupCapital
    BusinessStatus status
    String regAddress1
    String regAddress2
    String regAddress3
    Integer regPostcode
    String regTown
    State regState
    String regPhone
    String regFax
    String busAddress1
    String busAddress2
    String busAddress3
    Integer busPostcode
    String busTown
    State busState
    String busPhone
    String busFax
    String email
    String website
    String remarks
    Boolean active = 1
    Date dateCreated
    Date lastUpdated

    static constraints = {
        name            nullable: false, blank: false
        rocNo           unique: true
        dateCreated     nullable: true, display: false
        lastUpdated     nullable: true, display: false
        latestRevenue   nullable: true, display: false
        incorporation   nullable: true, display: false
        
    industry        nullable: true
    latestRevenue   nullable: true
    mofNo           nullable: true  
    authCapital     nullable: true
    paidupCapital   nullable: true
    status          nullable: true
    regAddress1     nullable: true
    regAddress2     nullable: true
    regAddress3     nullable: true
    regPostcode     nullable: true
    regTown         nullable: true
    regPhone        nullable: true
    regFax          nullable: true
    busAddress1     nullable: true
    busAddress2     nullable: true
    busAddress3     nullable: true
    busPostcode     nullable: true
    busTown         nullable: true
    busState        nullable: true
    busPhone        nullable: true
    busFax          nullable: true
    email           nullable: true
    website         nullable: true
    remarks         nullable: true
    active          nullable: true
       
    }
    
    static hasMany = [
        members: MemberLink
    ]
    
    public String toString() {
        name
    }
}
