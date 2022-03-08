import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import List "mo:base/List";
import Iter "mo:base/Iter";
import Char "mo:base/Char";
import Blob "mo:base/Blob";
import Array "mo:base/Array";

actor {
    // Challenge 1
    public func nat_to_nat8(n : Nat) : async Nat8 {
        return Nat8.fromNat(n);
    };

    // Challenge 2
    public func max_number_with_n_bits(n : Nat) : async Nat {
        return 2 ** n;
    };

    // Challenge 3
    public func decimal_to_bits(n : Nat) : async Text {
        var result = "";
        var i = 0;
        var j = 0;
        var k = n;

        while (k > 0) {
            result #= Nat.toText(k % 2);
            k /= 2;
        };

        return Text.fromIter(Iter.fromList(List.reverse(Iter.toList(Text.toIter(result)))));
    };

    // Challenge 4
    public func capitalize_character(c : Char) : async Char {
        return Char.fromNat32(Char.toNat32(c) - 32);
    };

    // Challenge 5
    public func capitalize_text(t : Text) : async Text {
        var result = "";
        for (char in t.chars()) {
            let temp = await capitalize_character(char);
            result #= Char.toText(temp);
        };
        return result;
    };

    // Challenge 6
    public func is_inside(t : Text, c : Char) : async Bool {
        for (char in t.chars()) {
            if (c == char) {
                return true;
            };
        };
        return false;
    };

    // Challenge 7
    public func trim_whitespace(t : Text) : async Text {
        return Text.trim(t, #char ' ');
    };

    // Challenge 8
    public func duplicated_character(t : Text) : async Text {
        for (char in t.chars()) {
            var counter = 0;
            for (c in t.chars()) {
                if (c == char) {
                    counter += 1;
                };
            };
            if (counter > 1) {
                return Char.toText(char);
            };
        };
        return t;
    };

    // Challenge 9
    public func size_in_bytes(t : Text) : async Nat32 {
        return Blob.hash(Text.encodeUtf8(t));
    };

    // Challenge 10
    public func bubble_sort(param : [Nat]) : async [Nat] {
        let array : [var Nat] = Array.thaw(param);
        for (i in Iter.range(0, array.size() - 1)) {
            for (j in Iter.range(0, array.size() - i - 2)) {
                if (array[j] > array[j + 1]) {
                    let temp = array[j];
                    array[j] := array[j + 1];
                    array[j + 1] := temp;
                };
            };
        };
        return Array.freeze(array);
    };
};
