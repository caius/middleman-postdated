require "middleman-postdated/version"
require "middleman-core"

module Middleman
  class PostdatedExtension < Extension

    # Run after frontmatter
    self.resource_list_manipulator_priority = 21

    # A Sitemap Manipulator
    def manipulate_resource_list(resources)
      resources.map(&method(:postdate))
    end

    private

    def postdate(resource)
      # If it already has a date, we ignore it
      return resource if resource.data[:date]

      # Attempt to grab date from filename, and give up if we can't
      datestring = resource.path[%r{(?:^|/)(\d{4}-\d{2}-\d{2})-}, 1]
      return resource unless datestring

      date = Date.parse(datestring, "yyyy-mm-dd")
      # Add it to the :page metadata specifically
      resource.add_metadata :page => {:date => Time.utc(date.year, date.month, date.day, 10, 0, 0)}

      resource
    end
  end
end
