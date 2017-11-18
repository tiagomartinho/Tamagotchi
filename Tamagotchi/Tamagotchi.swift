class Tamagotchi {

    var fullness = 0
    var hungriness = 100
    
    func feed() {
        hungriness -= 1
        fullness += 1
    }
}
