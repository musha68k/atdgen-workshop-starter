/* // Each refDomain object stored in the array of refdomains.json
   type t = {
     refdomain: string, // The referring domain that contains at least one link to the target.
     backlinks: int, // Number of backlinks found in the referring domain that link to the target.
     refpages: int, // Number of referring pages found in the referring domain that link to the target.
     firstSeen: string, // Least recent date when the Ahrefs crawler was able to visit the backlinks in the referring domain.
     lastVisited: string, // Most recent date when the Ahrefs crawler was able to visit the backlinks in the referring domain.
     domainRating: int // Domain Rating of the referring domain.
   };

   // The main type that represents the object stored in refdomains.json
   type main = {refDomains: array(t)};

   // Encoders

   // let encodeOne: t => Js.Json.t = r => Obj.magic(r); // <---- Implement

   let encodeOne: t => Js.Json.t =
     r =>
       Json.Encode.(
         object_([
           ("refdomain", string(r.refdomain)),
           ("backlinks", int(r.backlinks)),
           ("refpages", int(r.refpages)),
           ("first_seen", string(r.firstSeen)),
           ("last_visited", string(r.lastVisited)),
           ("domain_rating", int(r.domainRating)),
         ])
       );

   let encodeArray: array(t) => Js.Json.t = arr => Obj.magic(arr); // <---- Implement

   let encodeMain = main =>
     Json.Encode.(object_([("refdomains", encodeArray(main.refDomains))]));

   // Decoders

   let decodeOne: Js.Json.t => t =
     json =>
       Json.Decode.{
         refdomain: field("refdomain", string, json),
         backlinks: 42,
         refpages: field("refpages", int, json),
         firstSeen: field("first_seen", string, json),
         lastVisited: field("last_visited", string, json),
         domainRating: field("domain_rating", int, json),
       };

   let decodeArray: Js.Json.t => array(t) =
     json => Json.Decode.array(decodeOne, json);

   let decodeMain = json =>
     Json.Decode.{refDomains: json |> field("refdomains", decodeArray)}; */