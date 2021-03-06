unit ssl_bn;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface
uses ssl_types;

var
   BN_value_one: function: PBIGNUM; cdecl = nil;
   BN_options: function: PAnsiChar; cdecl = nil;
   BN_CTX_new: function: PBN_CTX; cdecl = nil;
   BN_CTX_init: procedure(c: PBN_CTX); cdecl = nil;
   BN_CTX_free: procedure(c: PBN_CTX) cdecl = nil;
   BN_CTX_start: procedure(ctx: PBN_CTX); cdecl = nil;
   BN_CTX_get: function(ctx: PBN_CTX): PBIGNUM; cdecl = nil;
   BN_CTX_end: procedure(ctx: PBN_CTX); cdecl = nil;
   BN_rand: function(rnd: PBIGNUM; bits: TC_INT; top: TC_INT; bottom: TC_INT): TC_INT; cdecl = nil;
   BN_pseudo_rand: function(rnd: PBIGNUM; bits: TC_INT; top: TC_INT; bottom: TC_INT): TC_INT; cdecl = nil;
   BN_rand_range: function(rnd: PBIGNUM; range: PBIGNUM): TC_INT; cdecl = nil;
   BN_pseudo_rand_range: function(rnd: PBIGNUM; range: PBIGNUM): TC_INT; cdecl = nil;
   BN_num_bits: function(a: PBIGNUM): TC_INT; cdecl = nil;
   BN_num_bits_word: function(a: BN_ULONG): TC_INT; cdecl = nil;
   BN_new: function: PBIGNUM; cdecl = nil;
   BN_init: procedure(a: PBIGNUM); cdecl = nil;
   BN_clear_free:procedure (a: PBIGNUM); cdecl = nil;
   BN_copy: function(a: PBIGNUM;b: PBIGNUM): PBIGNUM; cdecl = nil;
   BN_swap: procedure(a: PBIGNUM;b: PBIGNUM); cdecl = nil;
   BN_bin2bn: function(s: PAnsiChar; len: TC_INT; ret: PBIGNUM): PBIGNUM; cdecl = nil;
   BN_bn2bin: function(a: PBIGNUM; _to: PAnsiChar): TC_INT; cdecl = nil;
   BN_mpi2bn: function(s: PAnsiChar; len: TC_INT; ret: PBIGNUM): PBIGNUM; cdecl = nil;
   BN_bn2mpi: function(a: PBIGNUM; _to: PAnsiChar): TC_INT; cdecl = nil;
   BN_sub: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM): TC_INT; cdecl = nil;
   BN_usub: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM): TC_INT; cdecl = nil;
   BN_uadd: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM): TC_INT; cdecl = nil;
   BN_add: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM): TC_INT; cdecl = nil;
   BN_mul: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_sqr: function(r: PBIGNUM; a: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_set_negative: procedure(b: PBIGNUM; n: TC_INT); cdecl = nil;
   BN_div: function(dv: PBIGNUM; rem: PBIGNUM; m: PBIGNUM; d: PBIGNUM; ctx : PBN_CTX): TC_INT; cdecl = nil;
   BN_nnmod: function(r: PBIGNUM; m: PBIGNUM; d: PBIGNUM; ctx: PBN_CTX ): TC_INT; cdecl = nil;
   BN_mod_add: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; m: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_add_quick: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; m: PBIGNUM): TC_INT; cdecl = nil;
   BN_mod_sub: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; m: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_sub_quick: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; m: PBIGNUM): TC_INT; cdecl = nil;
   BN_mod_mul: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; m: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_sqr: function(r: PBIGNUM; a: PBIGNUM; m: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_lshift1: function(r: PBIGNUM; a: PBIGNUM; m: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_lshift1_quick: function(r: PBIGNUM; a: PBIGNUM; m: PBIGNUM): TC_INT; cdecl = nil;
   BN_mod_lshift: function(r: PBIGNUM; a: PBIGNUM; n: TC_INT; m :PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_lshift_quick: function(r: PBIGNUM; a: PBIGNUM; n: TC_INT; m :PBIGNUM): TC_INT; cdecl = nil;
   BN_mod_word: function(a: PBIGNUM; w: BN_ULONG): BN_ULONG; cdecl = nil;
   BN_div_word: function(a: PBIGNUM; w: BN_ULONG): BN_ULONG; cdecl = nil;
   BN_mul_word: function(a: PBIGNUM; w: BN_ULONG): TC_INT; cdecl = nil;
   BN_add_word: function(a: PBIGNUM; w: BN_ULONG): TC_INT; cdecl = nil;
   BN_sub_word: function(a: PBIGNUM; w: BN_ULONG): TC_INT; cdecl = nil;
   BN_set_word: function(a: PBIGNUM; w: BN_ULONG): TC_INT; cdecl = nil;
   BN_get_word: function(a: PBIGNUM): BN_ULONG; cdecl = nil;
   BN_cmp: function(a: PBIGNUM; b: PBIGNUM): TC_INT; cdecl = nil;
   BN_free: procedure(a: PBIGNUM); cdecl = nil;
   BN_is_bit_set: function(a: PBIGNUM; n: TC_INT): TC_INT; cdecl = nil;
   BN_lshift: function(r: PBIGNUM; a: PBIGNUM; n: TC_INT): TC_INT; cdecl = nil;
   BN_lshift1: function(r: PBIGNUM; a: PBIGNUM): TC_INT; cdecl = nil;
   BN_exp: function(r: PBIGNUM; a: PBIGNUM; p: BIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_exp: function(r: PBIGNUM; a: PBIGNUM; p: PBIGNUM;	m :PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_exp_mont: function(r: PBIGNUM; a: PBIGNUM; p: PBIGNUM;	m :PBIGNUM; ctx: PBN_CTX; m_ctx: PBN_MONT_CTX): TC_INT; cdecl = nil;
   BN_mod_exp_mont_consttime: function(rr: PBIGNUM; a: PBIGNUM; p: PBIGNUM; m: PBIGNUM; ctx: PBN_CTX; in_mont: PBN_MONT_CTX): TC_INT; cdecl = nil;
   BN_mod_exp_mont_word: function(r: PBIGNUM; a: TC_ULONG; p: PBIGNUM;	m :PBIGNUM; ctx: PBN_CTX; m_ctx: PBN_MONT_CTX): TC_INT; cdecl = nil;
   BN_mod_exp2_mont: function(r: PBIGNUM; a1: PBIGNUM; p1: PBIGNUM; a2: PBIGNUM; p2: BIGNUM; m: PBIGNUM; ctx: PBN_CTX; m_ctx: PBN_MONT_CTX): TC_INT; cdecl = nil;
   BN_mod_exp_simple: function(r: PBIGNUM; a: PBIGNUM; p: PBIGNUM;	m :PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mask_bits: function(a: PBIGNUM; n: TC_INT): TC_INT; cdecl = nil;
   BN_print_fp: function(var fp: FILE; a: PBIGNUM): TC_INT; cdecl = nil;
   BN_print: function(fp: PBIO; a: PBIGNUM): TC_INT; cdecl = nil;
   BN_reciprocal: function(r: PBIGNUM; const m: PBIGNUM; len: TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_rshift: function(r: PBIGNUM; const a: PBIGNUM; n: TC_INT): TC_INT; cdecl = nil;
   BN_rshift1: function(r: PBIGNUM; const a: PBIGNUM): TC_INT; cdecl = nil;
   BN_clear: procedure(a: PBIGNUM); cdecl = nil;
   BN_dup: function(a: PBIGNUM): PBIGNUM; cdecl = nil;
   BN_ucmp: function(a: PBIGNUM;b: PBIGNUM): TC_INT; cdecl = nil;
   BN_set_bit: function(a: PBIGNUM; n: TC_INT): TC_INT; cdecl = nil;
   BN_clear_bit: function(a: PBIGNUM; n: TC_INT): TC_INT; cdecl = nil;
   BN_bn2hex: function(const a: PBIGNUM): PAnsiChar; cdecl = nil;
   BN_bn2dec: function(const a: PBIGNUM): PAnsiChar;cdecl = nil;
   BN_hex2bn: function(a: PPBIGNUM; str: PAnsiChar): TC_INT; cdecl = nil;
   BN_dec2bn: function(a: PPBIGNUM; str: PAnsiChar): TC_INT; cdecl = nil;
   BN_asc2bn: function(a: PPBIGNUM; str: PAnsiChar): TC_INT; cdecl = nil;
   BN_gcd: function(r: PBIGNUM;const a: PBIGNUM;const b: PBIGNUM;ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_kronecker: function(const a: PBIGNUM;const b: PBIGNUM;ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_inverse: function(ret: PBIGNUM;	const a: PBIGNUM; const n: PBIGNUM;ctx: PBN_CTX): PBIGNUM; cdecl = nil;
   BN_mod_sqrt: function(ret: PBIGNUM;const a: PBIGNUM; const n: PBIGNUM;ctx: PBN_CTX): PBIGNUM; cdecl = nil;

   BN_generate_prime: function(ret: PBIGNUM;bits: TC_INT;safe: TC_INT; _add: PBIGNUM; _rem: PBIGNUM;	callback: BN_cb_1;cb_arg: pointer): PBIGNUM; cdecl = nil;
   BN_is_prime: function(p: PBIGNUM;nchecks: TC_INT; callback: BN_cb_1;ctx: PBN_CTX; cb_arg: pointer): TC_INT; cdecl = nil;
   BN_is_prime_fasttest: function(p: BIGNUM; nchecks: TC_INT;	callback:BN_cb_1; ctx: PBN_CTX; cb_arg: pointer; do_trial_division: TC_INT): TC_INT; cdecl = nil;
   BN_generate_prime_ex: function(ret: PBIGNUM;bits: TC_INT;safe: TC_INT; _add: PBIGNUM; _rem: PBIGNUM;	cb: PBN_GENCB): PBIGNUM; cdecl = nil;
   BN_is_prime_ex: function(p: PBIGNUM;nchecks: TC_INT; ctx: PBN_CTX;	cb: PBN_GENCB): TC_INT; cdecl = nil;
   BN_is_prime_fasttest_ex: function(p: BIGNUM; nchecks: TC_INT;	ctx: PBN_CTX; do_trial_division: TC_INT; cb: PBN_GENCB): TC_INT; cdecl = nil;

   BN_X931_generate_Xpq: function(Xp: PBIGNUM; Xq: PBIGNUM; nbits: TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_X931_derive_prime_ex: function(p: PBIGNUM; p1: PBIGNUM; p2: PBIGNUM; Xp: PBIGNUM; Xp1: PBIGNUM; Xp2: PBIGNUM;	e: PBIGNUM; ctx: PBN_CTX; cb: PBN_GENCB): TC_INT; cdecl = nil;
   BN_X931_generate_prime_ex: function(p: PBIGNUM; p1: PBIGNUM; p2: PBIGNUM; Xp1: PBIGNUM; Xp2: PBIGNUM; Xp: PBIGNUM; e: PBIGNUM; ctx: PBN_CTX;	cb: PBN_GENCB): TC_INT; cdecl = nil;

   BN_MONT_CTX_new: function: PBN_MONT_CTX; cdecl = nil;
   BN_MONT_CTX_init: procedure(ctx: PBN_MONT_CTX); cdecl = nil;
   BN_mod_mul_montgomery: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; mont: PBN_MONT_CTX; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_to_montgomery: function(r: PBIGNUM; a: PBIGNUM; mont: PBN_MONT_CTX; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_from_montgomery: function(r: PBIGNUM; a: PBIGNUM; mont: PBN_MONT_CTX; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_MONT_CTX_free: procedure(mont: PBN_MONT_CTX); cdecl = nil;

   BN_MONT_CTX_set: function(mont: PBN_MONT_CTX;const _mod: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_MONT_CTX_copy: function(_to: PBN_MONT_CTX; _from: PBN_MONT_CTX): PBN_MONT_CTX; cdecl = nil;
   BN_MONT_CTX_set_locked: function(pmont: PPBN_MONT_CTX; lock: TC_INT; const _mod: PBIGNUM; ctx: PBN_CTX): PBN_MONT_CTX; cdecl = nil;

   BN_BLINDING_new: function(const A: PBIGNUM; const Ai: PBIGNUM; _mod: PBIGNUM): PBN_BLINDING; cdecl = nil;
   BN_BLINDING_free: procedure(b: PBN_BLINDING); cdecl = nil;
   BN_BLINDING_update: function(b: PBN_BLINDING;ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_BLINDING_convert: function(n: PBIGNUM; b: PBN_BLINDING; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_BLINDING_invert: function(n: PBIGNUM; b: PBN_BLINDING; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_BLINDING_convert_ex: function(n: PBIGNUM; r: PBIGNUM; b: PBN_BLINDING; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_BLINDING_invert_ex: function(n: PBIGNUM; r: PBIGNUM; b: PBN_BLINDING; ctx: BN_CTX): TC_INT; cdecl = nil;
   BN_BLINDING_get_thread_id: function(b: BN_BLINDING): TC_ULONG; cdecl = nil;
   BN_BLINDING_set_thread_id: procedure(b: PBN_BLINDING; _par: TC_ULONG); cdecl = nil;
   BN_BLINDING_thread_id: function(b: PBN_BLINDING): PCRYPTO_THREADID; cdecl = nil;
   BN_BLINDING_get_flags: function(b: PBN_BLINDING): TC_ULONG; cdecl = nil;
   BN_BLINDING_set_flags: procedure(p: PBN_BLINDING; _par: TC_ULONG); cdecl = nil;
   BN_BLINDING_create_param: function(b: PBN_BLINDING; e: PBIGNUM; m: PBIGNUM; ctx: PBN_CTX; _mod_exp: BN_mod_exp_cb; m_ctx: PBN_MONT_CTX): PBN_BLINDING; cdecl = nil;

   BN_set_params: procedure(mul: TC_INT;_high: TC_INT;_low: TC_INT;mont: TC_INT); cdecl = nil;
   BN_get_params: function(which: TC_INT): TC_INT; cdecl = nil;

   BN_RECP_CTX_init: procedure(recp: PBN_RECP_CTX); cdecl = nil;
   BN_RECP_CTX_new: function: PBN_RECP_CTX; cdecl = nil;
   BN_RECP_CTX_free: procedure(recp: PBN_RECP_CTX); cdecl = nil;
   BN_RECP_CTX_set: function(recp: PBN_RECP_CTX;const rdiv: PBIGNUM;ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_mul_reciprocal: function(r: PBIGNUM; x: PBIGNUM; y: PBIGNUM; recp: PBN_RECP_CTX;ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_mod_exp_recp: function(r: PBIGNUM; const a: PBIGNUM; const p: PBIGNUM; const m: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_div_recp: function(dv: PBIGNUM; rem :PBIGNUM; const m: PBIGNUM;	recp: PBN_RECP_CTX; ctx: PBN_CTX): TC_INT; cdecl = nil;

   BN_GF2m_add: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM): TC_INT; cdecl = nil;
   BN_GF2m_sub: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM): TC_INT; cdecl = nil;
   BN_GF2m_mod: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM): TC_INT; cdecl = nil;
   BN_GF2m_mod_mul: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_GF2m_mod_sqr: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_GF2m_mod_inv: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_GF2m_mod_div: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_GF2m_mod_exp: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_GF2m_mod_sqrt: function(r: PBIGNUM; a: PBIGNUM; p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_GF2m_mod_solve_quad: function(r: PBIGNUM; a: PBIGNUM; p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
   BN_GF2m_cmp: function(a: PBIGNUM; p: PBIGNUM): TC_INT; cdecl = nil;

  BN_GF2m_mod_arr: function(r: PBIGNUM; a: PBIGNUM; p: array of TC_INT): TC_INT; cdecl = nil;
  BN_GF2m_mod_mul_arr: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; p: array of TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_GF2m_mod_sqr_arr: function(r: PBIGNUM; a: PBIGNUM; p: array of TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_GF2m_mod_inv_arr: function(r: PBIGNUM; b: PBIGNUM; p: array of TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_GF2m_mod_div_arr: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; p: array of TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_GF2m_mod_exp_arr: function(r: PBIGNUM; a: PBIGNUM; b: PBIGNUM; p: array of TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_GF2m_mod_sqrt_arr: function(r: PBIGNUM; a: PBIGNUM; p: array of TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_GF2m_mod_solve_quad_arr: function(r: PBIGNUM; a: PBIGNUM; p: array of TC_INT; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_GF2m_poly2arr: function(const a: PBIGNUM; p: array of TC_INT; max: TC_INT): TC_INT; cdecl = nil;
  BN_GF2m_arr2poly: function(p: array of TC_INT; a: PBIGNUM): TC_INT; cdecl = nil;

  BN_nist_mod_192: function(r: PBIGNUM; const a: PBIGNUM; const p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_nist_mod_224: function(r: PBIGNUM; const a: PBIGNUM; const p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_nist_mod_256: function(r: PBIGNUM; const a: PBIGNUM; const p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_nist_mod_384: function(r: PBIGNUM; const a: PBIGNUM; const p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;
  BN_nist_mod_521: function(r: PBIGNUM; const a: PBIGNUM; const p: PBIGNUM; ctx: PBN_CTX): TC_INT; cdecl = nil;

  BN_get0_nist_prime_192: function: PBIGNUM; cdecl = nil;
  BN_get0_nist_prime_224: function: PBIGNUM; cdecl = nil;
  BN_get0_nist_prime_256: function: PBIGNUM; cdecl = nil;
  BN_get0_nist_prime_384: function: PBIGNUM; cdecl = nil;
  BN_get0_nist_prime_521: function: PBIGNUM; cdecl = nil;

  bn_expand2: function(a: PBIGNUM; words: TC_INT): PBIGNUM; cdecl = nil;

  RAND_pseudo_bytes: function(buf: PAnsiChar; num: TC_INT): TC_INT; cdecl = nil;


  bn_mul_add_words: function(rp: PBN_ULONG; const ap: PBN_ULONG; num: TC_INT; w: BN_ULONG): BN_ULONG; cdecl = nil;
  bn_mul_words: function(rp: PBN_ULONG; const ap: PBN_ULONG; num: TC_INT; w: BN_ULONG): BN_ULONG; cdecl = nil;
  bn_div_words: function(h: BN_ULONG; l: BN_ULONG; d: BN_ULONG): BN_ULONG; cdecl = nil;
  bn_add_words: function(rp: PBN_ULONG; const ap: PBN_ULONG; const bp: PBN_ULONG;num: TC_INT): BN_ULONG; cdecl = nil;
  bn_sub_words: function(rp: PBN_ULONG; const ap: PBN_ULONG; const bp: PBN_ULONG;num: TC_INT): BN_ULONG; cdecl = nil;
  bn_sqr_words: procedure(rp: PBN_ULONG; const ap: PBN_ULONG; num: TC_INT); cdecl = nil;
  get_rfc2409_prime_768: function(bn: PBIGNUM): PBIGNUM; cdecl = nil;
  get_rfc2409_prime_1024: function(bn: PBIGNUM): PBIGNUM; cdecl = nil;
  get_rfc3526_prime_1536: function(bn: PBIGNUM): PBIGNUM; cdecl = nil;
  get_rfc3526_prime_2048: function(bn: PBIGNUM): PBIGNUM; cdecl = nil;
  get_rfc3526_prime_3072: function(bn: PBIGNUM): PBIGNUM; cdecl = nil;
  get_rfc3526_prime_4096: function(bn: PBIGNUM): PBIGNUM; cdecl = nil;
  get_rfc3526_prime_6144: function(bn: PBIGNUM): PBIGNUM; cdecl = nil;
  get_rfc3526_prime_8192: function(bn: PBIGNUM): PBIGNUM; cdecl = nil;
  BN_bntest_rand: function(rnd: PBIGNUM; bits: tc_int; top: tc_int; bottom: tc_int): TC_INT; cdecl = nil;

  ERR_load_BN_strings: procedure; cdecl = nil;


function BN_num_bytes(a: PBIGNUM): TC_INT;

procedure SSL_InitBN;



implementation

uses ssl_lib, ssl_util;

procedure SSL_InitBN;
begin
  if @BN_new = nil then
   begin
       @BN_value_one:= LoadFunctionCLib('BN_value_one');
       @BN_options:= LoadFunctionCLib('BN_options');
       @BN_CTX_new:= LoadFunctionCLib('BN_CTX_new');
       @BN_CTX_init:= LoadFunctionCLib('BN_CTX_init');
       @BN_CTX_free:= LoadFunctionCLib('BN_CTX_free');
       @BN_CTX_start:= LoadFunctionCLib('BN_CTX_start');
       @BN_CTX_get:= LoadFunctionCLib('BN_CTX_get');
       @BN_CTX_end:= LoadFunctionCLib('BN_CTX_end');
       @BN_rand:= LoadFunctionCLib('BN_rand');
       @BN_pseudo_rand:= LoadFunctionCLib('BN_pseudo_rand');
       @BN_rand_range:= LoadFunctionCLib('BN_rand_range');
       @BN_pseudo_rand_range:= LoadFunctionCLib('BN_pseudo_rand_range');
       @BN_num_bits:= LoadFunctionCLib('BN_num_bits');
       @BN_num_bits_word:= LoadFunctionCLib('BN_num_bits_word');
       @BN_new:= LoadFunctionCLib('BN_new');
       @BN_init:= LoadFunctionCLib('BN_init');
       @BN_clear_free:= LoadFunctionCLib('BN_clear_free');
       @BN_copy:= LoadFunctionCLib('BN_copy');
       @BN_swap:= LoadFunctionCLib('BN_swap');
       @BN_bin2bn:= LoadFunctionCLib('BN_bin2bn');
       @BN_bn2bin:= LoadFunctionCLib('BN_bn2bin');
       @BN_mpi2bn:= LoadFunctionCLib('BN_mpi2bn');
       @BN_bn2mpi:= LoadFunctionCLib('BN_bn2mpi');
       @BN_sub:= LoadFunctionCLib('BN_sub');
       @BN_usub:= LoadFunctionCLib('BN_usub');
       @BN_uadd:= LoadFunctionCLib('BN_uadd');
       @BN_add:= LoadFunctionCLib('BN_add');
       @BN_mul:= LoadFunctionCLib('BN_mul');
       @BN_sqr:= LoadFunctionCLib('BN_sqr');
       @BN_set_negative:= LoadFunctionCLib('BN_set_negative');
       @BN_div:= LoadFunctionCLib('BN_div');
       @BN_nnmod:= LoadFunctionCLib('BN_nnmod');
       @BN_mod_add:= LoadFunctionCLib('BN_mod_add');
       @BN_mod_add_quick:= LoadFunctionCLib('BN_mod_add_quick');
       @BN_mod_sub:= LoadFunctionCLib('BN_mod_sub');
       @BN_mod_sub_quick:= LoadFunctionCLib('BN_mod_sub_quick');
       @BN_mod_mul:= LoadFunctionCLib('BN_mod_mul');
       @BN_mod_sqr:= LoadFunctionCLib('BN_mod_sqr');
       @BN_mod_lshift1:= LoadFunctionCLib('BN_mod_lshift1');
       @BN_mod_lshift1_quick:= LoadFunctionCLib('BN_mod_lshift1_quick');
       @BN_mod_lshift:= LoadFunctionCLib('BN_mod_lshift');
       @BN_mod_lshift_quick:= LoadFunctionCLib('BN_mod_lshift_quick');
       @BN_mod_word:= LoadFunctionCLib('BN_mod_word');
       @BN_div_word:= LoadFunctionCLib('BN_div_word');
       @BN_mul_word:= LoadFunctionCLib('BN_mul_word');
       @BN_add_word:= LoadFunctionCLib('BN_add_word');
       @BN_sub_word:= LoadFunctionCLib('BN_sub_word');
       @BN_set_word:= LoadFunctionCLib('BN_set_word');
       @BN_get_word:= LoadFunctionCLib('BN_get_word');
       @BN_cmp:= LoadFunctionCLib('BN_cmp');
       @BN_free:= LoadFunctionCLib('BN_free');
       @BN_is_bit_set:= LoadFunctionCLib('BN_is_bit_set');
       @BN_lshift:= LoadFunctionCLib('BN_lshift');
       @BN_lshift1:= LoadFunctionCLib('BN_lshift1');
       @BN_exp:= LoadFunctionCLib('BN_exp');
       @BN_mod_exp:= LoadFunctionCLib('BN_mod_exp');
       @BN_mod_exp_mont:= LoadFunctionCLib('BN_mod_exp_mont');
       @BN_mod_exp_mont_consttime:= LoadFunctionCLib('BN_mod_exp_mont_consttime');
       @BN_mod_exp_mont_word:= LoadFunctionCLib('BN_mod_exp_mont_word');
       @BN_mod_exp2_mont:= LoadFunctionCLib('BN_mod_exp2_mont');
       @BN_mod_exp_simple:= LoadFunctionCLib('BN_mod_exp_simple');
       @BN_mask_bits:= LoadFunctionCLib('BN_mask_bits');
       @BN_print_fp:= LoadFunctionCLib('BN_print_fp');
       @BN_print:= LoadFunctionCLib('BN_print');
       @BN_reciprocal:= LoadFunctionCLib('BN_reciprocal');
       @BN_rshift:= LoadFunctionCLib('BN_rshift');
       @BN_rshift1:= LoadFunctionCLib('BN_rshift1');
       @BN_clear:= LoadFunctionCLib('BN_clear');
       @BN_dup:= LoadFunctionCLib('BN_dup');
       @BN_ucmp:= LoadFunctionCLib('BN_ucmp');
       @BN_set_bit:= LoadFunctionCLib('BN_set_bit');
       @BN_clear_bit:= LoadFunctionCLib('BN_clear_bit');
       @BN_bn2hex:= LoadFunctionCLib('BN_bn2hex');
       @BN_bn2dec:= LoadFunctionCLib('BN_bn2dec');
       @BN_hex2bn:= LoadFunctionCLib('BN_hex2bn');
       @BN_dec2bn:= LoadFunctionCLib('BN_dec2bn');
       @BN_asc2bn:= LoadFunctionCLib('BN_asc2bn');
       @BN_gcd:= LoadFunctionCLib('BN_gcd');
       @BN_kronecker:= LoadFunctionCLib('BN_kronecker');
       @BN_mod_inverse:= LoadFunctionCLib('BN_mod_inverse');
       @BN_mod_sqrt:= LoadFunctionCLib('BN_mod_sqrt');
       @BN_generate_prime:= LoadFunctionCLib('BN_generate_prime');
       @BN_is_prime:= LoadFunctionCLib('BN_is_prime');
       @BN_is_prime_fasttest:= LoadFunctionCLib('BN_is_prime_fasttest');
       @BN_generate_prime_ex:= LoadFunctionCLib('BN_generate_prime_ex');
       @BN_is_prime_ex:= LoadFunctionCLib('BN_is_prime_ex');
       @BN_is_prime_fasttest_ex:= LoadFunctionCLib('BN_is_prime_fasttest_ex');
       @BN_X931_generate_Xpq:= LoadFunctionCLib('BN_X931_generate_Xpq');
       @BN_X931_derive_prime_ex:= LoadFunctionCLib('BN_X931_derive_prime_ex');
       @BN_X931_generate_prime_ex:= LoadFunctionCLib('BN_X931_generate_prime_ex');
       @BN_MONT_CTX_new:= LoadFunctionCLib('BN_MONT_CTX_new');
       @BN_MONT_CTX_init:= LoadFunctionCLib('BN_MONT_CTX_init');
       @BN_mod_mul_montgomery:= LoadFunctionCLib('BN_mod_mul_montgomery');
       @BN_to_montgomery:= LoadFunctionCLib('BN_to_montgomery', false);
       @BN_from_montgomery:= LoadFunctionCLib('BN_from_montgomery');
       @BN_MONT_CTX_free:= LoadFunctionCLib('BN_MONT_CTX_free');
       @BN_MONT_CTX_set:= LoadFunctionCLib('BN_MONT_CTX_set');
       @BN_MONT_CTX_copy:= LoadFunctionCLib('BN_MONT_CTX_copy');
       @BN_MONT_CTX_set_locked:= LoadFunctionCLib('BN_MONT_CTX_set_locked');
       @BN_BLINDING_new:= LoadFunctionCLib('BN_BLINDING_new');
       @BN_BLINDING_free:= LoadFunctionCLib('BN_BLINDING_free');
       @BN_BLINDING_update:= LoadFunctionCLib('BN_BLINDING_update');
       @BN_BLINDING_convert:= LoadFunctionCLib('BN_BLINDING_convert');
       @BN_BLINDING_invert:= LoadFunctionCLib('BN_BLINDING_invert');
       @BN_BLINDING_convert_ex:= LoadFunctionCLib('BN_BLINDING_convert_ex');
       @BN_BLINDING_invert_ex:= LoadFunctionCLib('BN_BLINDING_invert_ex');
       @BN_BLINDING_get_thread_id:= LoadFunctionCLib('BN_BLINDING_get_thread_id');
       @BN_BLINDING_set_thread_id:= LoadFunctionCLib('BN_BLINDING_set_thread_id');
       @BN_BLINDING_thread_id:= LoadFunctionCLib('BN_BLINDING_thread_id');
       @BN_BLINDING_get_flags:= LoadFunctionCLib('BN_BLINDING_get_flags');
       @BN_BLINDING_set_flags:= LoadFunctionCLib('BN_BLINDING_set_flags');
       @BN_BLINDING_create_param:= LoadFunctionCLib('BN_BLINDING_create_param');
       @BN_set_params:= LoadFunctionCLib('BN_set_params');
       @BN_get_params:= LoadFunctionCLib('BN_get_params');
       @BN_RECP_CTX_init:= LoadFunctionCLib('BN_RECP_CTX_init');
       @BN_RECP_CTX_new:= LoadFunctionCLib('BN_RECP_CTX_new');
       @BN_RECP_CTX_free:= LoadFunctionCLib('BN_RECP_CTX_free');
       @BN_RECP_CTX_set:= LoadFunctionCLib('BN_RECP_CTX_set');
       @BN_mod_mul_reciprocal:= LoadFunctionCLib('BN_mod_mul_reciprocal');
       @BN_mod_exp_recp:= LoadFunctionCLib('BN_mod_exp_recp');
       @BN_div_recp:= LoadFunctionCLib('BN_div_recp');
       @BN_GF2m_add:= LoadFunctionCLib('BN_GF2m_add');
       @BN_GF2m_sub:= LoadFunctionCLib('BN_GF2m_sub', false);
       @BN_GF2m_mod:= LoadFunctionCLib('BN_GF2m_mod');
       @BN_GF2m_mod_mul:= LoadFunctionCLib('BN_GF2m_mod_mul');
       @BN_GF2m_mod_sqr:= LoadFunctionCLib('BN_GF2m_mod_sqr');
       @BN_GF2m_mod_inv:= LoadFunctionCLib('BN_GF2m_mod_inv');
       @BN_GF2m_mod_div:= LoadFunctionCLib('BN_GF2m_mod_div');
       @BN_GF2m_mod_exp:= LoadFunctionCLib('BN_GF2m_mod_exp');
       @BN_GF2m_mod_sqrt:= LoadFunctionCLib('BN_GF2m_mod_sqrt');
       @BN_GF2m_mod_solve_quad:= LoadFunctionCLib('BN_GF2m_mod_solve_quad');
       @BN_GF2m_cmp:= LoadFunctionCLib('BN_GF2m_cmp', false);
       @BN_GF2m_mod_arr:= LoadFunctionCLib('BN_GF2m_mod_arr');
       @BN_GF2m_mod_mul_arr:= LoadFunctionCLib('BN_GF2m_mod_mul_arr');
       @BN_GF2m_mod_sqr_arr:= LoadFunctionCLib('BN_GF2m_mod_sqr_arr');
       @BN_GF2m_mod_inv_arr:= LoadFunctionCLib('BN_GF2m_mod_inv_arr');
       @BN_GF2m_mod_div_arr:= LoadFunctionCLib('BN_GF2m_mod_div_arr');
       @BN_GF2m_mod_exp_arr:= LoadFunctionCLib('BN_GF2m_mod_exp_arr');
       @BN_GF2m_mod_sqrt_arr:= LoadFunctionCLib('BN_GF2m_mod_sqrt_arr');
       @BN_GF2m_mod_solve_quad_arr:= LoadFunctionCLib('BN_GF2m_mod_solve_quad_arr');
       @BN_GF2m_poly2arr:= LoadFunctionCLib('BN_GF2m_poly2arr');
       @BN_GF2m_arr2poly:= LoadFunctionCLib('BN_GF2m_arr2poly');
       @BN_nist_mod_192:= LoadFunctionCLib('BN_nist_mod_192');
       @BN_nist_mod_224:= LoadFunctionCLib('BN_nist_mod_224');
       @BN_nist_mod_256:= LoadFunctionCLib('BN_nist_mod_256');
       @BN_nist_mod_384:= LoadFunctionCLib('BN_nist_mod_384');
       @BN_nist_mod_521:= LoadFunctionCLib('BN_nist_mod_521');
       @BN_get0_nist_prime_192:= LoadFunctionCLib('BN_get0_nist_prime_192');
       @BN_get0_nist_prime_224:= LoadFunctionCLib('BN_get0_nist_prime_224');
       @BN_get0_nist_prime_256:= LoadFunctionCLib('BN_get0_nist_prime_256');
       @BN_get0_nist_prime_384:= LoadFunctionCLib('BN_get0_nist_prime_384');
       @BN_get0_nist_prime_521:= LoadFunctionCLib('BN_get0_nist_prime_521');
       @bn_expand2:= LoadFunctionCLib('bn_expand2');
       @RAND_pseudo_bytes:= LoadFunctionCLib('RAND_pseudo_bytes');
       @bn_mul_add_words:= LoadFunctionCLib('bn_mul_add_words');
       @bn_mul_words:= LoadFunctionCLib('bn_mul_words');
       @bn_div_words:= LoadFunctionCLib('bn_div_words');
       @bn_add_words:= LoadFunctionCLib('bn_add_words');
       @bn_sub_words:= LoadFunctionCLib('bn_sub_words');
       @bn_sqr_words:= LoadFunctionCLib('bn_sqr_words');
       @get_rfc2409_prime_768:= LoadFunctionCLib('get_rfc2409_prime_768');
       @get_rfc2409_prime_1024:= LoadFunctionCLib('get_rfc2409_prime_1024');
       @get_rfc3526_prime_1536:= LoadFunctionCLib('get_rfc3526_prime_1536');
       @get_rfc3526_prime_2048:= LoadFunctionCLib('get_rfc3526_prime_2048');
       @get_rfc3526_prime_3072:= LoadFunctionCLib('get_rfc3526_prime_3072');
       @get_rfc3526_prime_4096:= LoadFunctionCLib('get_rfc3526_prime_4096');
       @get_rfc3526_prime_6144:= LoadFunctionCLib('get_rfc3526_prime_6144');
       @get_rfc3526_prime_8192:= LoadFunctionCLib('get_rfc3526_prime_8192');
       @BN_bntest_rand:= LoadFunctionCLib('BN_bntest_rand');
       @ERR_load_BN_strings:= LoadFunctionCLib('ERR_load_BN_strings');
   end;
end;

function BN_num_bytes(a: PBIGNUM): TC_INT;
begin
  Result := (BN_num_bits(a)+7) div 8;
end;

end.
