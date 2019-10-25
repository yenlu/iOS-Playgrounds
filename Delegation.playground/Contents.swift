protocol CookieMaker {
    func makeCookies() -> Cookie
}

class Cookie {
    
}

class Panera: CookieMaker {
    var address: String
    
    init(address: String) {
        self.address = address
    }
    
    func makeCookies() -> Cookie {
        let cookie = Cookie()
        print("made cookies at Panera \(address)")
        return cookie
    }
}

class InsomniaCookies: CookieMaker {
    func makeCookies() -> Cookie {
        let cookie = Cookie()
        print("made cookies at Insomnia Cookies")
        return cookie
    }
}

class DoorDash {
    var cookieMaker: CookieMaker
    
    init(cookieMaker: CookieMaker) {
        self.cookieMaker = cookieMaker
    }
    
    func orderCookies() -> Cookie {
        let cookies = cookieMaker.makeCookies()
        
        return cookies
    }
}

let panera = Panera(address: "Edison")
let paneraTwo = Panera(address: "Cherry Hill")
let doorDash = DoorDash(cookieMaker: paneraTwo)

doorDash.orderCookies()

let insomnia = InsomniaCookies()
let doorDash2 = DoorDash(cookieMaker: insomnia)

doorDash2.orderCookies()


class Student {
    var gpa: Int
    var school: String
    var major: String
    var year: Int

    init(gpa: Int, school: String, major: String, year: Int) {
        self.gpa = gpa
        self.school = school
        self.major = major
        self.year = year
    }

    func goToClass() {
        print("go to class")
    }
}

class RutgersStudent: Student {
    var campus: String
    var netID: String
    
    init(gpa: Int, school: String, major: String, year: Int, campus: String, netID: String) {
        self.campus = campus
        self.netID = netID
        
        super.init(gpa: <#T##Int#>, school: <#T##String#>, major: <#T##String#>, year: <#T##Int#>)
    }
}
