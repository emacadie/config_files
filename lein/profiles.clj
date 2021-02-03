;; /home/$USER/.lein/profiles.clj
;[lein-droid "0.3.0"] @clojars.org
{:user 
 {:plugins 
  [
   [cider/cider-nrepl "0.25.8"]
   ; a Clojure lint tool: https://clojars.org/jonase/eastwood
   [jonase/eastwood "0.3.13" :exclusions [[org.clojure/clojure]]] 
   [lein-droid "0.3.0"] 
   ; [lein-autoreload "0.1.1"]
   ]
  :dependencies [ ; [org.clojure/tools.nrepl "0.2.13"]
                 [nrepl "0.8.3"] ; https://clojars.org/nrepl, seems to be maintained
                 [org.clojure/tools.namespace "0.2.11"]
                 ]
                                        ; :repl-options { :init-ns user }
  :resource-paths ["~/.lein/src"]
  }}

