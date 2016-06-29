require "middleman-core"
require "middleman-postdated/extension"

Middleman::Extensions.register(:postdated) { Middleman::PostdatedExtension }
