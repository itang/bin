# gem

## Config

    查找默认源
    $ gem sources

    移除默认源
    gem sources --remove https://rubygems.org/

    添加新源
    gem sources -a https://mirrors.aliyun.com/rubygems/

## Usage

    全局安装
    $ gem install redis

    $ gem list toml

    通过Gemfile project安装
    $ bundler install

    bundle exec allows irb to load the gems that Bundler knows about, and only the gems Bundler knows about
    $ bundle exec irb
    > puts $LOAD_PATH
    ...
    /.asdf/installs/ruby/2.7.1/lib/ruby/gems/
    ...

    don’t even need to require the gems in your Gemfile. They’re already required for you:
    $ bundle console

    like
    $ bundle exec irb
    > Bundler.require

    rails console requires those gems, but it will also load your entire Rails environment, set up autoloading, initialize your application, and give you a full Rails environment to play around in.
    $ rails console

    like
    $ bundle console
    > Rails.application
    > require_relative 'config/environment.rb'
    > Rails.application

## Gemfile Sample

```ruby
# https://rubygems.org/
source 'https://mirrors.aliyun.com/rubygems/'
gem 'nokogiri'
gem 'rack', '~> 2.0.1'
gem 'rspec'
```

## Refs

https://www.justinweiss.com/articles/what-are-the-differences-between-irb/
