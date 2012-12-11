name              "ruby"
maintainer        "Mathias Lafeldt"
maintainer_email  "mathias.lafeldt@gmail.com"
license           "Apache 2.0"
description       "Installs Ruby using rbenv"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.0"
recipe            "ruby::default", "Installs Ruby using rbenv"

depends "ruby_build"
depends "rbenv"
