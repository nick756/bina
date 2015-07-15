import com.bina.structure.*


class BootStrap {
    def grailsApplication
        
    def init = { servletContext ->
        
        if(com.bina.structure.Gender.list().size() == 0) {
            new com.bina.structure.Gender(
                code: 1,
                name: "Male"
            ).save() 
            new com.bina.structure.Gender(
                code: 2,
                name: "Female"
            ).save()
            
            println ""
            println "List of Genders created"
        }
        
        if(UserRole.list().size() == 0) { 
            new UserRole(
                code: 1,
                name: 'Administrator'
            ).save()
            
            new UserRole(
                code: 2,
                name: 'Operator'
            ).save()

            println ""
            println "UserRole created: ${UserRole.count()} instances"
        } 
        
        if(User.list().size() == 0) {
            new User(
                name: 'Alexander',
                login: 'alex',
                passw: '1234',
                role: UserRole.findByCode(1)
            ).save()
            
            println ""
            println "Users created: ${User.count()} instances"
        }
        
        if(State.list().size() == 0) { 
            new State(
                code: 1,
                shortName: 'W',
                name: 'WP Kuala Lumpur'
            ).save()
            
            new State(
                code: 2,
                shortName: 'U',
                name: 'WP Putrajaya'
            ).save()
            
            new State(
                code: 3,
                shortName: 'J',
                name: 'Johor'
            ).save()
            
            new State(
                code: 4,
                shortName: 'K',
                name: 'Kedah'
            ).save()
            
            new State(
                code: 5,
                shortName: 'D',
                name: 'Kelantan'
            ).save()
            
            new State(
                code: 6,
                shortName: 'L',
                name: 'Labuan'
            ).save()
            
            new State(
                code: 7,
                shortName: 'M',
                name: 'Melaka'
            ).save()
            
            new State(
                code: 8,
                shortName: 'N',
                name: 'Negeri Sembilan'
            ).save()
            
            new State(
                code: 9,
                shortName: 'C',
                name: 'Pahang'
            ).save()
            
            new State(
                code: 10,
                shortName: 'P',
                name: 'Penang'
            ).save()
            
            new State(
                code: 11,
                shortName: 'A',
                name: 'Perak'
            ).save()
            
            new State(
                code: 12,
                shortName: 'R',
                name: 'Perlis'
            ).save()
            
            new State(
                code: 13,
                shortName: 'S',
                name: 'Sabah'
            ).save()
            
            new State(
                code: 14,
                shortName: 'E',
                name: 'Sarawak'
            ).save()
            
            new State(
                code: 15,
                shortName: 'B',
                name: 'Selangor'
            ).save()
            
            new State(
                code: 16,
                shortName: 'T',
                name: 'Terengganu'
            ).save()

            println ""
            println "State created: ${State.count()} instances"
        }
        
        if(BusinessStatus.list().size() == 0) {
            new BusinessStatus(
                code: 1,
                name: 'Operational'
            ).save()
            
            new BusinessStatus(
                code: 2,
                name: 'Closed'
            ).save()
            
            println ""
            println "BusinessStatus created: ${BusinessStatus.count()} instances"
        }
        
        if(BusinessType.list().size() == 0) {
            new BusinessType(
                code: 1,
                name: 'Sendirian Berhad'
            ).save()
            
            new BusinessType(
                code: 2,
                name: 'Enterprise'
            ).save()
            
            new BusinessType(
                code: 3,
                name: 'Berhad'
            ).save()
            
            println ""
            println "BusinessType created: ${BusinessType.count()} instances"
        }
        
        if(IDType.list().size() == 0) {
            new IDType(
                code: 1,
                name: 'IC'
            ).save()
            
            new IDType(
                code: 2,
                name: 'Passport'
            ).save()
            
            println ""
            println "IDType created: ${IDType.count()} instances"
        }
        
        if(IDType.list().size() == 0) {
            new IDType(
                code: 1,
                name: 'IC'
            ).save()
            
            new IDType(
                code: 2,
                name: 'Passport'
            ).save()
            
            println ""
            println "IDType created: ${IDType.count()} instances"
        }
        
        if(Race.list().size() == 0) {
            new Race(
                code: 1,
                name: 'Malay'
            ).save()
            
            new Race(
                code: 2,
                name: 'Chinese'
            ).save()
            
            new Race(
                code: 3,
                name: 'Indian'
            ).save()
            
            new Race(
                code: 4,
                name: 'Other'
            ).save()
            
            println ""
            println "Race created: ${Race.count()} instances"
        }
        
        if(Religion.list().size() == 0) {
            new Religion(
                code: 1,
                name: 'Muslim'
            ).save()
            
            new Religion(
                code: 2,
                name: 'Christian'
            ).save()
            
            new Religion(
                code: 3,
                name: 'Buddhist'
            ).save()
            
            new Religion(
                code: 4,
                name: 'Hindu'
            ).save()
            
            new Religion(
                code: 5,
                name: 'Other'
            ).save()
            
            println ""
            println "Religion created: ${Religion.count()} instances"
        }
        
        importFirst500()
        importMembers()
    }
    

    def destroy = {
    }
    
    def importFirst500() {
        def filePath = "resources/data500.csv"
        def fileContent = grailsApplication.mainContext.getResource("classpath:$filePath").file
        def count = 0
        def dateIncorp
        
        println "\nImporting from file: ${filePath}"
        
        fileContent.splitEachLine("@") {fields ->
            ++count
            
            try {
                dateIncorp = new Date().parse("d/MM/yyyy", fields[3])
            }
            catch(Exception e) {
                println "Failed Date: ${fields[3]} at line ${count}"
                println "Company: ${fields[2]} ${fields[0]}"
            }
            
            def bus = new Business(
                name:           fields[2],
                rocNo:          fields[0] + "-" + fields[1],
                type:           BusinessType.findByCode(1),
                regAddress1:    fields[5],
                regAddress2:    '',
                regAddress3:    '',
                regTown:        fields[8],
                regState:       State.findByShortName(fields[9]),
                regPostcode:    new Integer(fields[10])
                
            )
            
            if(dateIncorp) {
                bus.incorporation = dateIncorp
            }
            
            bus.validate()
            
            if(bus.hasErrors() && count < 10) {
                println "Error ${bus.errors} at line ${count}"
            }
            
            bus.save(failOnError: true, flush: true)
        }
        
        println "Total Business instances created: ${Business.count()}"        
    }
    
    def importMembers() {
        def filePath = "resources/members-NEWER.csv"
        def fileContent = grailsApplication.mainContext.getResource("classpath:$filePath").file
        def count = 0
        def birthDate 
        def link
        def business
        def createlink = true
        def member
        
        println ''
        println "Importing Members from ${filePath}"
        
        fileContent.splitEachLine("\\*") {fields ->
            ++count
            
            try {
                birthDate = new Date().parse("d/MM/yyyy", fields[3])
            }
            catch(Exception e) {
                println "Failed Date: ${fields[3]} at line ${count}"
                println "Member: ${fields[2]}"
                
            }
            
            business = Business.findByRocNoLike("${fields[0]}\\-%")
            
            if(business) {
                createlink = true
            }
            else {
                createlink = false
                println "Member ${fields[2]} at line ${count} is not bound to a Company"
            }
            
            member = new Member(
                idNumber: fields[1],
                name: fields[2]
            )
            
            if(birthDate) member.birthDate = birthDate
            
            member.save(flush: true)
            
            //  Bind only if Business was found above
            
            if(createlink) {
                link = new MemberLink(
                    company: business,
                    member: member
                ).save(flush: true)
                
                business.addToMembers(link).save(flush: true)
                member.addToCompanies(link).save(flush: true)
            }
        }
        
        println ''
        println "Total Members imported: ${Member.count()}"
    }
}
