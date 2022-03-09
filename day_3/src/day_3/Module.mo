import Array "mo:base/Array";

module {
    public func contains<A>(array : [A], a : A, f : (A, A) -> Bool) : Bool {
        for (elem in array.vals()) {
            if(f(a, elem) == true) {
                return true;
            };
        };
        return false;
    };
}