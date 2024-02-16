let () =
  let location = Filename.concat (Sys.getcwd ()) Sys.argv.(1) in
  Array.iter
    (fun f ->
      if Filename.extension f = ".txt" then
        Printf.printf
          "(rule\n        (alias read) \n        (action (cat %s)))\n" f)
    (Sys.readdir location)
