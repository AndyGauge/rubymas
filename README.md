## Usage

creating a connection to a MAS server begins with the `.new` method.  Pass
a hash to the initializer with your connection information:

```ruby
RubyMas.new {
          host: 'localhost',
          user: 'username',
      password: 'password',
      mas_user: 'AG',
      mas_pass: 'password'           
}
```