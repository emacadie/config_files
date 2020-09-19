;; /home/$USER/.lein/profiles.clj
;[lein-droid "0.3.0"] @clojars.org
{:user 
 {:plugins 
  [
   [cider/cider-nrepl "0.25.3"]
   [jonase/eastwood "0.3.11" :exclusions [[org.clojure/clojure]]]               
   [lein-droid "0.3.0"] 
   ; [lein-autoreload "0.1.1"]
   ]
  :dependencies [[org.clojure/tools.nrepl "0.2.13"]
                 [org.clojure/tools.namespace "0.2.11"]
                 ]
                                        ; :repl-options { :init-ns user }
  :resource-paths ["~/.lein/src"]
  }}

