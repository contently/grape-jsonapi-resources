module Grape
  module EndpointExtension
    def render_resource(resources, options = {})
      env['jsonapi_options'] = options
      resources
    end
  end

  Endpoint.send(:include, EndpointExtension)
end
