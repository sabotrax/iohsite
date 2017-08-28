# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page "/darkhope/cpinfoswl/gallerie.html", :layout => "layout_dark_gallerie"
page "/darkhope/cpinfoswl/*", :layout => "layout_dark_cpinfoswl"
page "/darkhope/*", :layout => "layout_dark"

page "/cpinfoswl/gallerie.html", :layout => "layout_gallerie"
page "/cpinfoswl/industriesgroup/*", :layout => "layout_industriesgroup"
# Gleiches Layout fuer Industries und Guardians (../../ zum CSS)
page "/cpinfoswl/guardiansgroup/*", :layout => "layout_industriesgroup"
page "/cpinfoswl/*", :layout => "layout_cpinfoswl"

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

require "lib/ioh_helpers"
helpers IoHHelpers

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

activate :livereload
ignore "*_orig"
