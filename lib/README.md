## Usage

creating a connection to a MAS server begins with the `.new` method.  Pass
a hash to the initializer with your connection information:

```ruby
RubyMas.new {
          host: 'localhost',
          user: 'AG',
      password: 'password',                
}
```