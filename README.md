# Rails with Postgres Cookbook

This chef cookbook provides recipes for building a Rails development Vagrant box on Centos 6.5. It installs PostgreSQL 9.3 and creates development and test databases. It then runs `bundle install`, `npm install`, `rake db:schema:load` and `rake db:seed` to install gems, Node modules and load the database schema and seed data.

## Supported Platforms

* Centos 6.5

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['umark_ruby']['project_root']</tt></td>
    <td>String</td>
    <td>Path to applicaton root</td>
    <td><tt>/var/www/</tt></td>
  </tr>
  <tr>
    <td><tt>['umark_ruby']['ruby_version']</tt></td>
    <td>String</td>
    <td>Ruby version</td>
    <td><tt>2.1.1</tt></td>
  </tr>
  <tr>
    <td><tt>['umark_ruby']['db_name']</tt></td>
    <td>String</td>
    <td>Development database name</td>
    <td><tt>my_db_name</tt></td>
  </tr>
  <tr>
    <td><tt>['umark_ruby']['db_name_test']</tt></td>
    <td>String</td>
    <td>Test database name</td>
    <td><tt>my_db_name_test</tt></td>
  </tr>
</table>

## Usage

### umark_ruby::default

The default recipe installs Ruby via rbenv, as well as the bundler gem. 

Include `umark_ruby` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[umark_ruby::default]"
  ],
}
```

### umark_ruby::postgres

The postgres recipe installs database::postgresql and postgresql::server and then creates development and test databases.

```json
{
  "run_list": [
    "recipe[umark_ruby::postgres]"
  ],
}
```

### umark_ruby::javascript_packages

The javascript_packages recipe installs Node, grunt globally and then runs `npm install` in the project root directory.

```json
{
  "run_list": [
    "recipe[umark_ruby::javascript_packages]"
  ],
}
```

### umark_ruby::rails

The rails recipe runs `bundle install`, `rake db:schema:load` and `rake db:seed`.

```json
{
  "run_list": [
    "recipe[umark_ruby::rails]"
  ],
}
```

## License and Authors

Author:: Nick Weaver (jnweaver@wisc.edu)
