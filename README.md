# middleman-postdated

Reads resource date from filename, instead of frontmatter.

Handy when you have blog-like dated posts/resources and want them named on disk for the day they were published (`2015-01-01-first-thing`, `2015-02-03-other-thing`, etc), but can't be bothered to duplicate that information in the frontmatter of the resource as well.

This extension is currently very opinionated, but if you align with those opinions it'll be useful:

* Files are named `yyyy-mm-dd-title`
* Frontmatter dates take precedence over filename dates
* Time element of filename date is `10:00:00`
* All resources should be amended if they pass the previous criteria

## Usage

Add the following to your `config.rb`:

    activate :postdated
