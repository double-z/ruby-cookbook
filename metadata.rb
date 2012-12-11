name              "ruby"
maintainer        "Mathias Lafeldt"
maintainer_email  "mathias.lafeldt@gmail.com"
license           "Apache 2.0"
description       "Wrapper cookbook that installs Ruby using rbenv and ruby-build"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.0"
recipe            "ruby::default", "Installs Ruby 1.9.3 using rbenv and ruby-build"

depends "rbenv"
depends "ruby_build"
