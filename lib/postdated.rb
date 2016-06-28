require "middleman-core"

Middleman::Extensions.register :postdated do
  require "postdated/extension"

  Postdated::Extension
end
