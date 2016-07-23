;;; common/clojure.el -- summary

;;; Commentary:
;; Clojure editing configurations.

;;; Code:

;; Configure Cider CLJS REPL to start figwheel-sidecar repl.
(require 'cider)
(setq cider-cljs-lein-repl
      "(do (require 'figwheel-sidecar.repl-api)
           (figwheel-sidecar.repl-api/start-figwheel!)
           (figwheel-sidecar.repl-api/cljs-repl))")

;;; clojure.el ends here
