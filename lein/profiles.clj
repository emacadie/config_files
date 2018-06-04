;; /home/$USER/.lein/profiles.clj
;[lein-droid "0.3.0"] @clojars.org
{:user {:plugins [
                  [cider/cider-nrepl "0.16.0-SNAPSHOT"]
                  [jonase/eastwood "0.2.5"]
                  [lein-droid "0.3.0"] 
                  ; [lein-autoreload "0.1.1"]
                  ]
        :dependencies [[org.clojure/tools.nrepl "0.2.12"]
                       [org.clojure/tools.namespace "0.2.11"]
                       ]
        :repl-options { :init-ns user }
        :source-paths ["~/.lein/src"]}}
