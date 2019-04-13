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

let write_stats = (
  Atdgen_codec_runtime.Encode.make (fun (t : stats) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"refdomains"
          t.refdomains
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"ips"
          t.ips
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"class_c"
          t.class_c
      ]
    )
  )
)
let read_stats = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          refdomains =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "refdomains"
            ) json;
          ips =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "ips"
            ) json;
          class_c =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "class_c"
            ) json;
      } : stats)
    )
  )
)
let write__2 = (
    Atdgen_codec_runtime.Encode.int
  |> Atdgen_codec_runtime.Encode.contramap (Domain_rating_wrapper.unwrap)
)
let read__2 = (
  (
    Atdgen_codec_runtime.Decode.int
  ) |> (Atdgen_codec_runtime.Decode.map (Domain_rating_wrapper.wrap))
)
let write__1 = (
    Atdgen_codec_runtime.Encode.string
  |> Atdgen_codec_runtime.Encode.contramap (Js.Date.toString)
)
let read__1 = (
  (
    Atdgen_codec_runtime.Decode.string
  ) |> (Atdgen_codec_runtime.Decode.map (Js.Date.fromString))
)
let write_refdomain = (
  Atdgen_codec_runtime.Encode.make (fun (t : refdomain) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"refdomain"
          t.refdomain
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"backlinks"
          t.backlinks
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"refpages"
          t.refpages
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"first_seen"
          t.first_seen
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write__1
            )
          ~name:"last_visited"
          t.last_visited
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write__2
            )
          ~name:"domain_rating"
          t.domain_rating
      ]
    )
  )
)
let read_refdomain = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          refdomain =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "refdomain"
            ) json;
          backlinks =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "backlinks"
            ) json;
          refpages =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "refpages"
            ) json;
          first_seen =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "first_seen"
            ) json;
          last_visited =
            Atdgen_codec_runtime.Decode.decode
            (
              read__1
              |> Atdgen_codec_runtime.Decode.field "last_visited"
            ) json;
          domain_rating =
            Atdgen_codec_runtime.Decode.decode
            (
              read__2
              |> Atdgen_codec_runtime.Decode.field "domain_rating"
            ) json;
      } : refdomain)
    )
  )
)
let write__3 = (
  Atdgen_codec_runtime.Encode.list (
    write_refdomain
  )
)
let read__3 = (
  Atdgen_codec_runtime.Decode.list (
    read_refdomain
  )
)
let write_refdomains = (
  Atdgen_codec_runtime.Encode.make (fun (t : refdomains) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            write__3
            )
          ~name:"refdomains"
          t.refdomains
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write_stats
            )
          ~name:"stats"
          t.stats
      ]
    )
  )
)
let read_refdomains = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          refdomains =
            Atdgen_codec_runtime.Decode.decode
            (
              read__3
              |> Atdgen_codec_runtime.Decode.field "refdomains"
            ) json;
          stats =
            Atdgen_codec_runtime.Decode.decode
            (
              read_stats
              |> Atdgen_codec_runtime.Decode.field "stats"
            ) json;
      } : refdomains)
    )
  )
)
let write__5 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    Atdgen_codec_runtime.Encode.string
  )
)
let read__5 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    Atdgen_codec_runtime.Decode.string
  )
)
let write__4 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    write_refdomains
  )
)
let read__4 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    read_refdomains
  )
)
let write_refdomains_result = (
  Atdgen_codec_runtime.Encode.make (fun (t : refdomains_result) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field_o
            (
            write_refdomains
            )
          ~name:"ok"
          t.ok
        ;
          Atdgen_codec_runtime.Encode.field_o
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"error"
          t.error
      ]
    )
  )
)
let read_refdomains_result = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          ok =
            Atdgen_codec_runtime.Decode.decode
            (
              read_refdomains
              |> Atdgen_codec_runtime.Decode.fieldOptional "ok"
            ) json;
          error =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.fieldOptional "error"
            ) json;
      } : refdomains_result)
    )
  )
)
