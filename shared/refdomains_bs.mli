(* Auto-generated from "refdomains.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type refdomain = Refdomains_t.refdomain = {
  refdomain: string;
  backlinks: int;
  refpages: int;
  first_seen: string;
  last_visited: string;
  domain_rating: int
}

type refdomains = Refdomains_t.refdomains = { refdomains: refdomain list }

val read_refdomain :  refdomain Atdgen_codec_runtime.Decode.t

val write_refdomain :  refdomain Atdgen_codec_runtime.Encode.t

val read_refdomains :  refdomains Atdgen_codec_runtime.Decode.t

val write_refdomains :  refdomains Atdgen_codec_runtime.Encode.t

