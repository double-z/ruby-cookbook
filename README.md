Description
===========

This is a wrapper cookbook that installs Ruby using the cookbooks
[rbenv](https://github.com/fnichol/chef-rbenv) and
[ruby_build](https://github.com/fnichol/chef-ruby_build) by Fletcher Nichol.

Besides providing meaningful node attributes, this wrapper also addresses
[a serious problem](https://github.com/fnichol/chef-rbenv/issues/16) with the
rbenv cookbook that might cause the first converge to fail.

Requirements
============

## Platform:

Most current platforms are supported; see documentation of rbenv cookbook.

## Cookbooks:

* rbenv
* ruby_build

Attributes
==========

The cookbook overrides the following rbenv attributes:

- `node['rbenv']['global']`
- `node['rbenv']['rubies']`
- `node['rbenv']['gems']`

See file `attributes/default.rb` for actual node attributes.

Recipes
=======

## ruby::default

Installs Ruby 1.9.3 using rbenv and ruby-build

License and Author
==================

Author:: Mathias Lafeldt (<mathias.lafeldt@gmail.com>)

Copyright:: 2012, Mathias Lafeldt

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
