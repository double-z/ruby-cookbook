Description
===========

Chef wrapper cookbook that installs Ruby using [rbenv](https://github.com/sstephenson/rbenv)

Requirements
============

## Platform:

Most current platforms are supported; see documentation of rbenv cookbook.

## Cookbooks:

* [ruby_build](https://github.com/fnichol/chef-ruby_build)
* [rbenv](https://github.com/fnichol/chef-rbenv)

Attributes
==========

The recipe `ruby::default` overrides the following rbenv attributes:

- `node['rbenv']['global']`
- `node['rbenv']['rubies']`
- `node['rbenv']['gems']`

See the excellent documentaion of the rbenv cookbook for more information.

Recipes
=======

## ruby::default

Installs Ruby using rbenv

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
