# config/initializers/themes.rb

Spina::Theme.register do |theme|
  theme.name = "custom"
  theme.title = "Custom theme"

  # Parts
  theme.parts = [
    {name: "repeater", title: "Repeater", part_type: "Spina::Parts::Repeater", item_name: "item", parts: %w[line image headline]},
    {name: "line", title: "Line", part_type: "Spina::Parts::Line"},
    {name: "body", title: "Body", hint: "Your content", part_type: "Spina::Parts::Text"},
    {name: "image_collection", title: "Image collection", part_type: "Spina::Parts::ImageCollection"},
    {name: "image", title: "Image", part_type: "Spina::Parts::Image"},
    {name: "headline", title: "Headline", hint: "Used in the header", part_type: "Spina::Parts::Line"},
    {name: "footer", title: "Footer", part_type: "Spina::Parts::Text"}
  ]

  # View templates
  theme.view_templates = [
    {name: "homepage", title: "Homepage", parts: %w[headline body image_collection]},
    {name: "show", title: "Default", parts: %w[body image repeater]},
    {name: "custom", title: "Custom", parts: %w[body image_collection image repeater], exclude_from: %w[articles]}
  ]

  # Custom pages
  theme.custom_pages = [
    {name: "homepage", title: "Homepage", deletable: false, view_template: "homepage"}
  ]

  # Navigations
  theme.navigations = [
    {name: "main", label: "Main navigation"}
  ]

  # Layout parts
  theme.layout_parts = []

  # Resources
  theme.resources = [
    {name: "articles", label: "Articles", view_template: "article", slug: "articles"}
  ]

  # Plugins
  theme.plugins = ["reviews", "blog"]

  # Embeds
  theme.embeds = []
end
