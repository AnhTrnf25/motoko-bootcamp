import Array "mo:base/Array";
import Iter "mo:base/Iter"

actor {
    // Challenge 1
    public func add(n : Nat, m : Nat) : async Nat {
        return n + m;
    };

    // Challenge 2
    public func square(n : Nat) : async Nat {
        return n * n;
    };

    // Challenge 3
    public func days_to_seconds(n : Nat) : async Nat {
        return n * 60 * 60 * 24;
    };

    // Challenge 4
    var counter = 0;
    public func increment_counter(n : Nat) : async Nat {
        counter += n;
        return counter;
    };
    
    public func clear_counter() : async () {
        counter := 0
    };

    // Challenge 5
    public func divide(n: Nat, m : Nat) : async Bool {
        if (m != 0) {
            if (n % m == 0) {
                return true;
            };
        };
        return false;
    };

    // Challenge 6
    public func is_even(n : Nat) : async Bool {
        if (n % 2 == 0) {
            return true;
        };
        return false;
    };

    // Challenge 7
    public func sum_of_array(array : [Nat]) : async Nat {
        if (array.size() != 0) {
            var sum = 0;
            for (elem in array.vals()) {
                sum += elem;
            };
            return sum;
        };
        return 0;
    };

    // Challenge 8
    public func maximum(array : [Nat]) : async Nat {
        if (array.size() != 0) {
            var max = array[0];
            for (elem in array.vals()) {
                if (elem > max) {
                    max := elem;
                };
            };
            return max;
        };
        return 0;
    };

    // Challenge 9
    public func remove_from_array(array : [Nat], n : Nat) : async [Nat] {
        return Array.filter(array, func (x : Nat) : Bool {
            x != n;
        });
    };

    // Challenge 10
    public func selection_sort(param : [Nat]) : async [Nat] {
        let array : [var Nat] = Array.thaw(param);
        for (i in Iter.range(0, array.size() - 2)) {
            var min = i;
            for (j in Iter.range(i + 1, array.size() - 1)) {
                if (array[j] < array[min]) {
                    min := j;
                };
            };
            var temp = array[min];
            array[min] := array[i];
            array[i] := temp;
        };
        return Array.freeze(array);
    };
};
