import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'day_of_the_week' : (arg_0: bigint) => Promise<[] | [string]>,
  'increate_by_index' : (arg_0: Array<bigint>) => Promise<Array<bigint>>,
  'init_count' : (arg_0: bigint) => Promise<Array<bigint>>,
  'nat_opt_to_nat' : (arg_0: [] | [bigint], arg_1: bigint) => Promise<bigint>,
  'populate_array' : (arg_0: Array<[] | [bigint]>) => Promise<Array<bigint>>,
  'seven' : (arg_0: Array<bigint>) => Promise<string>,
  'squared_array' : (arg_0: Array<bigint>) => Promise<Array<bigint>>,
  'sum_of_array' : (arg_0: Array<bigint>) => Promise<bigint>,
  'test_challenge_10' : (arg_0: Array<bigint>, arg_1: bigint) => Promise<
      boolean
    >,
}
