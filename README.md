# RenderWithAreas

Makes it easy to name and render multiple content areas in a partial,
instead of being limited to just the one `yield`.

## Installation

Install the gem and add to the Rails application's Gemfile by executing:

```bash
$ bundle add render_with_areas
```

Include it in `ApplicationHelper` in your Rails app:

```rb
module ApplicationHelper
  include RenderWithAreas
end
```

## Usage

Example:

```erb
<!-- app/views/ui/_modal.html.erb -->

<div class="modal">
  <header class="modal__header">
    <%= header %>
  </header>

  <main>
    <%= yield %>
  </main>

  <footer class="modal__footer">
    <%= footer %>
  </footer>
</div>

<!-- app/views/posts/show.html.erb -->

<%= render_with_areas 'ui/modal' do |layout| %>
  <% layout.with :header do %>
    <h1>Modal Title</h1>
  <% end %>

  This will be yielded as default content

  <% layout.with :footer do %>
    This will show up in the modal footer.
  <% end %>
<% end %>


<!-- also supports locals, strings -->
<%= render_with_areas 'path/to/partial', title: "Modal Title" do |layout| %>
  This will be yielded as default content

  <% layout.with :footer, "Footer" %>
<% end %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/render_with_areas. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/render_with_areas/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RenderWithAreas project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/render_with_areas/blob/main/CODE_OF_CONDUCT.md).
