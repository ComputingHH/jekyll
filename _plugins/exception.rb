# Force liquid to raise an error and stop build if this filter is called
module Jekyll
  module ExceptionFilter
    def raise_error(input)
    	bad_page = @context.registers[:page]['path']
    	err_msg = "#{bad_page}: #{input}"
      raise err_msg
    end
  end
end

Liquid::Template.register_filter(Jekyll::ExceptionFilter)
