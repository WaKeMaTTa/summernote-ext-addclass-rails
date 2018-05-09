## Publish new version

### 1. Update summernote assets

```bash
bundle exec rake update
```
// TODO : automation using rake

### 2. Update gem version number

Edit `lib/summernote-ext-addclass-rails/version.rb`

```ruby
module SummernoteExtAddclassRails
  module Rails
    VERSION = x.y.0
  end
end
```

### 3. Publish

Publish on rubygems

```bash
bundle exec gem release --tag
```

this command git tagging and publish
