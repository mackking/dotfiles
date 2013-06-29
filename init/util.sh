# ----------
# A couple utility functions to be used by the various init scripts.
# ----------

# Logging stuff. Borrowed from @cowboy
function e_header()   { echo -e "\n\033[1;34m$@\033[0m";   }
function e_success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_info()     { echo -e " \033[1;33m➜\033[0m  $@"; }
