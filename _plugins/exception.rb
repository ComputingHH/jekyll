# Force liquid to raise an error and stop build if this filter is called
module Jekyll
  module ExceptionFilter
    def raise_error(input)
      raise input
    end
  end
end

Liquid::Template.register_filter(Jekyll::ExceptionFilter)
