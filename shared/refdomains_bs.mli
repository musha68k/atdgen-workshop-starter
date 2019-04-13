(* Auto-generated from "refdomains.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type stats = Refdomains_t.stats = { refdomains: int; ips: int; class_c: int }

type refdomain = Refdomains_t.refdomain = {
  refdomain: string;
  backlinks: int;
  refpages: int;
  first_seen: string;
  last_visited: Js.Date.t;
  domain_rating: Domain_rating_wrapper.t
}

type refdomains = Refdomains_t.refdomains = {
  refdomains: refdomain list;
  stats: stats
}

type refdomains_result = Refdomains_t.refdomains_result = {
  ok: refdomains option;
  error: string option
}

val read_stats :  stats Atdgen_codec_runtime.Decode.t

val write_stats :  stats Atdgen_codec_runtime.Encode.t

val read_refdomain :  refdomain Atdgen_codec_runtime.Decode.t

val write_refdomain :  refdomain Atdgen_codec_runtime.Encode.t

val read_refdomains :  refdomains Atdgen_codec_runtime.Decode.t

val write_refdomains :  refdomains Atdgen_codec_runtime.Encode.t

val read_refdomains_result :  refdomains_result Atdgen_codec_runtime.Decode.t

val write_refdomains_result :  refdomains_result Atdgen_codec_runtime.Encode.t

