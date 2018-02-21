;; pico-8.el -- major mode for editing pico-8 cartridges -*- coding: utf-8; lexical-binding: t; -*-

(setq pico8-font-lock-keywords
      (let* ((pico-constants '("true" "false" "nil"))
             (pico-keywords '("for" "do" "end" "function" "foreach" "if" "then"))
             (pico-functions-graphics '("clip" "pget" "pset" "sget" "sset" "fget" "fset" "cursor" "color" "cls" "camera" "circ" "circfill" "line" "rect" "rectfill" "pal" "palt" "spr" "sspr" "fillp"))
             (pico-functions-tables '("add" "del" "all" "foreach" "pairs"))
             (pico-functions-misc '("btn" "btnp" "sfx" "music" "mget" "mset" "map"))
             (pico-functions-memory '("peek" "poke" "memcpy" "reload" "cstore" "memset"))
             (pico-functions-math '("max" "min" "mid" "flr" "cos" "sin" "atan2" "sqrt" "abs" "rnd" "srand" "band" "bor" "bxor" "bnot" "shl" "shr"))
             (pico-events '("print"))

             (pico-constants-regexp (regexp-opt pico-constants 'words))
             (pico-keywords-regexp (regexp-opt pico-keywords 'words))
             (pico-functions-regexp (regexp-opt (append pico-functions-graphics
                                                        pico-functions-tables
                                                        pico-functions-misc
                                                        pico-functions-memory
                                                        pico-functions-math)
                                                'words))
             (pico-events-regexp (regexp-opt pico-events 'words)))
        
        `((,pico-constants-regexp . font-lock-constant-face)
          (,pico-functions-regexp . font-lock-function-name-face)
          (,pico-events-regexp . font-lock-builtin-face)
          (,pico-keywords-regexp . font-lock-keyword-face))))

(define-derived-mode pico8-mode lua-mode "pico-8 mode"
(define-derived-mode pico8-mode lua-mode "pico-8"
  (setq font-lock-defaults '((pico8-font-lock-keywords))))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.p8\\'" . pico8-mode))

(provide 'pico8-mode)
