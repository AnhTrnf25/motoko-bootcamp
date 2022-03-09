import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Option "mo:base/Option";
import Module "Module";

actor {
    // Challenge 1
    private func swap(array : [var Nat], i : Nat, j : Nat) : async [Nat] {
        let temp = array[i];
        array[i] := array[j];
        array[j] := temp;

        return Array.freeze(array);
    };

    // Challenge 2
    public func init_count(n : Nat) : async [Nat] {
        var array : [var Nat] = Array.init<Nat>(n, 0);

        for (i in Iter.range(0, n - 1)) {
            array[i] := i;
        };

        return Array.freeze(array);
    };

    // Challenge 3
    public func seven(array : [Nat]) : async Text {
        if (Array.find(array, func (x : Nat) : Bool {
            x != 7;
        }) != null) {
            return "Seven is found";
        };
        return "Seven not found";
    };

    // Challenge 4
    public func nat_opt_to_nat(n : ?Nat, m : Nat) : async Nat {
        if (n != null) {
            var value : Nat = 0;
            return Option.unwrap(n);
        };
        return m;
    };

    // Challenge 5
    let days_of_the_week = ["Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday"];
    public func day_of_the_week(n : Nat) : async ?Text {
        if (n == 0 or n > 7) {
            return null;
        };
        return Option.make(days_of_the_week[n]);
    };

    // Challenge 6
    public func populate_array(array : [?Nat]) : async [Nat] {
        return Array.map(array, func (x : ?Nat) : Nat {
            if (x != null) {
                return Option.unwrap(x); 
            };
            return 0;
        });
    };

    // Challenge 7
    var sum : Nat = 0;
    public func sum_of_array(array : [Nat]) : async Nat {
        let temp = Array.map(array, func (x : Nat) : Nat {
            sum += x;
            return x;
        });
        return sum;
    };

    // Challenge 8
    public func squared_array(array : [Nat]) : async [Nat] {
        return Array.map(array, func (x : Nat) : Nat {
            return x ** 2;
        });
    };

    // Challenge 9
    public func increate_by_index(array : [Nat]) : async [Nat] {
        let iter = Iter.range(0, array.size() - 1);
        return Array.map(array, func (x : Nat) : Nat {
            var temp : Nat = 0;
            return x + Option.get(iter.next(), temp);
        });
    };

    // Challenge 10
    let f = func (m : Nat, n : Nat) : Bool {
        if (m != n) {
            return false;
        };
        return true;
    };

    public func test_challenge_10(array : [Nat], a : Nat) : async Bool {
        return Module.contains<Nat>(array, a, f);
    }
};
