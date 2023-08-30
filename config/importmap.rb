<<<<<<< HEAD
# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "abyme", to: "https://ga.jspm.io/npm:abyme@0.7.4/dist/abyme.modern.mjs"
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.2.2/dist/stimulus.js"
=======
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
>>>>>>> 98e8f6b7bfa2b64dff9c24b66d92690161658636
