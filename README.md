# Devise Foundationed

This gem tries to give you a nicer place to start with your views for your Devise model when you're using Foundation 6 (XY Grid)

You can find usage information below, but the gist of it is you'll run rails g devise:views:foundationed instead of the normal devise:views.

If you want to switch back to what Devise gives you no problem! Just remove the devise views folder and run the normal Devise generator command.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'devise-foundationed'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise-foundationed

## Usage

To use the Foundation views generator you'll want to have Devise and Foundation installed per normal installation... and once you have installed Devise and generated your user model you can copy over the views with

rails generate devise:views:foundationed

If you've already generated the Devise views you can use the -f argument to force an override but that will erase any of the changes you've made!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/devise-foundationed. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Devise::Foundationed project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/devise-foundationed/blob/master/CODE_OF_CONDUCT.md).
