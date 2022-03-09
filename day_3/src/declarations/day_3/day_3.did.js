export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'day_of_the_week' : IDL.Func([IDL.Nat], [IDL.Opt(IDL.Text)], []),
    'increate_by_index' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Vec(IDL.Nat)], []),
    'init_count' : IDL.Func([IDL.Nat], [IDL.Vec(IDL.Nat)], []),
    'nat_opt_to_nat' : IDL.Func([IDL.Opt(IDL.Nat), IDL.Nat], [IDL.Nat], []),
    'populate_array' : IDL.Func(
        [IDL.Vec(IDL.Opt(IDL.Nat))],
        [IDL.Vec(IDL.Nat)],
        [],
      ),
    'seven' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Text], []),
    'squared_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Vec(IDL.Nat)], []),
    'sum_of_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'test_challenge_10' : IDL.Func([IDL.Vec(IDL.Nat), IDL.Nat], [IDL.Bool], []),
  });
};
export const init = ({ IDL }) => { return []; };
