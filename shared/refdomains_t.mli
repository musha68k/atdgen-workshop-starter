(* Auto-generated from "refdomains.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type stats = { refdomains: int; ips: int; class_c: int }

type refdomain = {
  refdomain: string;
  backlinks: int;
  refpages: int;
  first_seen: string;
  last_visited: Js.Date.t;
  domain_rating: Domain_rating_wrapper.t
}

type refdomains = { refdomains: refdomain list; stats: stats }

type refdomains_result = { ok: refdomains option; error: string option }
