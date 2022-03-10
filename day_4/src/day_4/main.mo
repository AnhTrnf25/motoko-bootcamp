import Custom "custom";
import Animal "animal";
import List "mo:base/List";
import Option "mo:base/Option";

actor {
    // Challenge 1
    public type Rabbit = Custom.Rabbit;
    
    public func fun() : async Rabbit {
        let bunny : Rabbit = {
            age = 1;
            size = "small";
            food = "carrot";
        };
    };

    // Challenge 2
    public type Animal = Animal.Animal;

    let tiger : Animal = {
        specie = "Cat";
        energy = 10;
    };

    // Challenge 3
    public func test_challenge_3() : async Animal {
        return Animal.animal_sleep(tiger);
    };

    // Challenge 4
    public func create_animal_then_takes_a_break(specie : Text, energy : Nat) : async Animal {
        let new_animal : Animal = {
            specie = specie;
            energy = energy;
        };
        return Animal.animal_sleep(new_animal);
    };

    // Challenge 5
    var list_of_animals = List.nil<Animal>();
    
    // Challenge 6
    public func push_animal(animal : Animal) : () {
        List.push(animal, list_of_animals);
    };

    // Challenge 7

};
