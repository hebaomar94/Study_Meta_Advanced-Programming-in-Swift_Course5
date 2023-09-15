enum Dessert {
    case tirmaisu
    case tea
    case water
}

let fav = Dessert.tirmaisu
switch fav {
case.tirmaisu:
    print("tir is my fav")
case.tea:
    print("tea is my fav")
case.water:
    print("water is my fav ")
}


//add additional info to tirmaisu case

enum Dessert {
    case tirmaisu(chefName: String?) //next the enum case i specify the type of value
    //add chefname as arg label for value
    case tea
    case water
}

let fav = Dessert.tirmaisu(chefName: "maikle")//add chefname
switch fav {
case.tirmaisu(let chefName)://updated
    let prefix: String
    if let chefName = chefName{
        prefix = "\(chefName)"}
    else {
        prefix = ""
    }
    print("\(prefix)tir is my fav")
case.tea:
    print("tea is my fav")
case.water:
    print("water is my fav ")
}
