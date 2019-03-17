# RubyCliGemProject

Project Requirements
Provide a CLI
Your CLI application must provide access to data from a web page.

The data provided must go at least one level deep. A "level" is where a user can make a choice and then get detailed information about their choice.

Use good OO design patterns. You should be creating a collection of objects, not hashes, to store your data. 

***Pro Tip: Avoid scraping data more than once per web page - utilize objects you have already created. It will speed up your program!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_cli_gem_project'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_cli_gem_project

## Usage
run the program
select a number to see the corresponding player's stats.
Either select a different player, enter 'roster' to see the team roster
or enter "exit" to close the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/ruby_cli_gem_project.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
