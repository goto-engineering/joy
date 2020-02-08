(import joy :prefix "")
(import ./layout :as layout)
(import ./routes :as routes)


(def app (as-> routes/app ?
               (layout ? layout/app)
               (db ? (env :database-url))
               (logger ?)
               (csrf-token ?)
               (session ?)
               (extra-methods ?)
               (query-string ?)
               (body-parser ?)
               (server-error ?)
               (x-headers ?)
               (static-files ?)
               (not-found ?)))
