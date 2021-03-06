### VERSION 0.7.7

* enhancements
  * prevent to pass wrong file to CSV adapter

### VERSION 0.7.6

* bug fix
  * avoid verification of field blabk and allow to do with Extra Validator

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/26)
* [Author Joel AZEMAR](https://github.com/joel)

### VERSION 0.7.5

Add extra feature on Autodiscover Regex field.

* enhancements
  * Add case sensitive option on auto discover field
  * Add exact matching option on auto discover field

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/25)
* [Author Joel AZEMAR](https://github.com/joel)

### VERSION 0.7.4

* security updates

### VERSION 0.7.3

* enhancements
  * add sanitizer

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/24)
* [Author Joel AZEMAR](https://github.com/joel)

### VERSION 0.7.2

* bug fix
  Fix bug and add case sensitive values
* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/22)
* [Author Ale Paredes](https://github.com/ale7714)

* enhancements
  allow multiple versions of ruby
* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/23)
* [Author Steve Chung](https://github.com/s12chung)

### VERSION 0.7.1

* enhancements
  * update yaml coercer to deserialize string position to regex

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/21)

* [Author Ale Paredes](https://github.com/ale7714)

### VERSION 0.7.0

* feature
  * Auto discover is also available for collection.

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/20)

* [Author Ale Paredes](https://github.com/ale7714)

### VERSION 0.6.8

* bug fix
  * fix typo on generator

### VERSION 0.6.7

* enhancements
  * initializer can be take block or value

* refactoring
  * following rails way for naming file

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/17)

### VERSION 0.6.6

* refactoring
  * little trick on YamlLoader

* [fullchanges](https://github.com/FinalCAD/csv2hash/commit/a4b3fb5b6cdb3ed41b039f68391b30054fab3668)

### VERSION 0.6.5

* enhancements
  * Add Coercer for deserialize field from Yaml like ExtraValidator and Regex
  * Add Coercer for deserialize field from Csv value to ruby value like 'true' => true
  * Add missing module prefix Csv2hash
  * remove rule for dynmaic field with field is optional and not found

* feature
  * Add generator for configure csv2hash on Rails app

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/16)

### VERSION 0.6.4

* feature
  * make configuration file can be writing with ERB interpolation.

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/15)

### VERSION 0.6.3

* refactoring
  * The Main constructor can be take in first arg a definition itself or simply the path of yaml file definition or just symbol of name of definition (when it have already loaded)

* feature
  * add yml loader

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/14)

### VERSION 0.6.2

* feature
  * Auto discover, you can add floating position on mapping rules

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/12)

### VERSION 0.6.1

* deprecations
  * Structure validation rules, MinColumn, MaxColumn are replaced by :min_columns, :max_columns

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/11)

### VERSION 0.6.0

* backwards incompatible changes
  * Introduce DSL for definition

* refactoring
  * replace arguments for rules by DSL of cells

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/10)

### VERSION 0.5.0

* backwards incompatible changes
  * The signature of Csv2hash::Main#new has changed.

* refactoring
  * remove params ``` ignore_blank_line ``` to benefit of options of Hash

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/9)

### VERSION 0.4.0

* backwards incompatible changes
  * The signature of Csv2hash::Main#new has changed.

* refactoring
  * remove params ``` break_on_failure ``` to benefit of ``` Csv2hash::Main#parse! ``` of ``` Csv2hash::Main#parse ```

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/8)

### VERSION 0.3.0

* backwards incompatible changes
  * Csv2hash is module now, call Csv2hash::Main.new
  * The signature of Csv2hash::Main#new has changed.

* refactoring
  * Use adapter to select source of data, either file.csv or Array of data, is more transparently, not impact signature of Csv2Hash constructor

* [fullchanges](https://github.com/FinalCAD/csv2hash/pull/7)

### VERSION 0.2.1

* bug fix
  * Correct little bug on error mode.

### VERSION 0.2

* backwards incompatible changes
  * The signature of Definition#new

* enhancements
  * Add checking of number of columns

* deprecations

### VERSION 0.1

* enhancements
  * Add csv errors mode
  * Add Extra Validator
  * Add Notifier Plugin
  * Add Data Wrapper Response
  * Add possibility to pass directly data in constructor, for more testing
  * You can ignore blank line

### VERSION 0.0.2

* enhancements
  * Liitle enhancement

### VERSION 0.0.1

* Skeleton and first parsing
