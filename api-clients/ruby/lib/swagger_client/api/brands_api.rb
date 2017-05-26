=begin
#Otreeba Open Cannabis API

#This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).

OpenAPI spec version: 1.0.0
Contact: api@otreeba.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class BrandsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Find brand by Open Cannabis Product Code (OCPC).
    # Returns a single brand.
    # @param ocpc OCPC of the brand to return.
    # @param [Hash] opts the optional parameters
    # @return [Brand]
    def get_brand_by_ocpc(ocpc, opts = {})
      data, _status_code, _headers = get_brand_by_ocpc_with_http_info(ocpc, opts)
      return data
    end

    # Find brand by Open Cannabis Product Code (OCPC).
    # Returns a single brand.
    # @param ocpc OCPC of the brand to return.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Brand, Fixnum, Hash)>] Brand data, response status code and response headers
    def get_brand_by_ocpc_with_http_info(ocpc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BrandsApi.get_brand_by_ocpc ..."
      end
      # verify the required parameter 'ocpc' is set
      fail ArgumentError, "Missing the required parameter 'ocpc' when calling BrandsApi.get_brand_by_ocpc" if ocpc.nil?
      # resource path
      local_var_path = "/brands/{ocpc}".sub('{format}','json').sub('{' + 'ocpc' + '}', ocpc.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Brand')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BrandsApi#get_brand_by_ocpc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all current edibles for the given brand.
    # Returns a paginated list of edibles.
    # @param ocpc OCPC of the brand to list edibles for.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50. (default to 10)
    # @option opts [String] :sort How to sort the items. (default to -createdAt)
    # @return [InlineResponse2008]
    def get_brand_edibles(ocpc, opts = {})
      data, _status_code, _headers = get_brand_edibles_with_http_info(ocpc, opts)
      return data
    end

    # Get a list of all current edibles for the given brand.
    # Returns a paginated list of edibles.
    # @param ocpc OCPC of the brand to list edibles for.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50.
    # @option opts [String] :sort How to sort the items.
    # @return [Array<(InlineResponse2008, Fixnum, Hash)>] InlineResponse2008 data, response status code and response headers
    def get_brand_edibles_with_http_info(ocpc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BrandsApi.get_brand_edibles ..."
      end
      # verify the required parameter 'ocpc' is set
      fail ArgumentError, "Missing the required parameter 'ocpc' when calling BrandsApi.get_brand_edibles" if ocpc.nil?
      if opts[:'sort'] && !['-createdAt', 'createdAt', '-updatedAt', 'updatedAt', '-name', 'name'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of -createdAt, createdAt, -updatedAt, updatedAt, -name, name'
      end
      # resource path
      local_var_path = "/brands/{ocpc}/edibles".sub('{format}','json').sub('{' + 'ocpc' + '}', ocpc.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BrandsApi#get_brand_edibles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all current extracts for the given brand.
    # Returns a paginated list of extracts.
    # @param ocpc OCPC of the brand to list extracts for.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50. (default to 10)
    # @option opts [String] :sort How to sort the items. (default to -createdAt)
    # @return [InlineResponse2007]
    def get_brand_extracts(ocpc, opts = {})
      data, _status_code, _headers = get_brand_extracts_with_http_info(ocpc, opts)
      return data
    end

    # Get a list of all current extracts for the given brand.
    # Returns a paginated list of extracts.
    # @param ocpc OCPC of the brand to list extracts for.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50.
    # @option opts [String] :sort How to sort the items.
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def get_brand_extracts_with_http_info(ocpc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BrandsApi.get_brand_extracts ..."
      end
      # verify the required parameter 'ocpc' is set
      fail ArgumentError, "Missing the required parameter 'ocpc' when calling BrandsApi.get_brand_extracts" if ocpc.nil?
      if opts[:'sort'] && !['-createdAt', 'createdAt', '-updatedAt', 'updatedAt', '-name', 'name'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of -createdAt, createdAt, -updatedAt, updatedAt, -name, name'
      end
      # resource path
      local_var_path = "/brands/{ocpc}/extracts".sub('{format}','json').sub('{' + 'ocpc' + '}', ocpc.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BrandsApi#get_brand_extracts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all current flowers for the given brand.
    # Returns a paginated list of flowers.
    # @param ocpc OCPC of the brand to list flowers for.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50. (default to 10)
    # @option opts [String] :sort How to sort the items. (default to -createdAt)
    # @return [InlineResponse2006]
    def get_brand_flowers(ocpc, opts = {})
      data, _status_code, _headers = get_brand_flowers_with_http_info(ocpc, opts)
      return data
    end

    # Get a list of all current flowers for the given brand.
    # Returns a paginated list of flowers.
    # @param ocpc OCPC of the brand to list flowers for.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50.
    # @option opts [String] :sort How to sort the items.
    # @return [Array<(InlineResponse2006, Fixnum, Hash)>] InlineResponse2006 data, response status code and response headers
    def get_brand_flowers_with_http_info(ocpc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BrandsApi.get_brand_flowers ..."
      end
      # verify the required parameter 'ocpc' is set
      fail ArgumentError, "Missing the required parameter 'ocpc' when calling BrandsApi.get_brand_flowers" if ocpc.nil?
      if opts[:'sort'] && !['-createdAt', 'createdAt', '-updatedAt', 'updatedAt', '-name', 'name'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of -createdAt, createdAt, -updatedAt, updatedAt, -name, name'
      end
      # resource path
      local_var_path = "/brands/{ocpc}/flowers".sub('{format}','json').sub('{' + 'ocpc' + '}', ocpc.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2006')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BrandsApi#get_brand_flowers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all current products for the given brand.
    # Returns a paginated list of products.
    # @param ocpc OCPC of the brand to list products for.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50. (default to 10)
    # @option opts [String] :sort How to sort the items. (default to -createdAt)
    # @return [InlineResponse2009]
    def get_brand_products(ocpc, opts = {})
      data, _status_code, _headers = get_brand_products_with_http_info(ocpc, opts)
      return data
    end

    # Get a list of all current products for the given brand.
    # Returns a paginated list of products.
    # @param ocpc OCPC of the brand to list products for.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50.
    # @option opts [String] :sort How to sort the items.
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def get_brand_products_with_http_info(ocpc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BrandsApi.get_brand_products ..."
      end
      # verify the required parameter 'ocpc' is set
      fail ArgumentError, "Missing the required parameter 'ocpc' when calling BrandsApi.get_brand_products" if ocpc.nil?
      if opts[:'sort'] && !['-createdAt', 'createdAt', '-updatedAt', 'updatedAt', '-name', 'name'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of -createdAt, createdAt, -updatedAt, updatedAt, -name, name'
      end
      # resource path
      local_var_path = "/brands/{ocpc}/products".sub('{format}','json').sub('{' + 'ocpc' + '}', ocpc.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BrandsApi#get_brand_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all current brands.
    # Returns a paginated list of brands.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50. (default to 10)
    # @option opts [String] :sort How to sort the items. (default to -createdAt)
    # @return [InlineResponse2005]
    def get_brands(opts = {})
      data, _status_code, _headers = get_brands_with_http_info(opts)
      return data
    end

    # Get a list of all current brands.
    # Returns a paginated list of brands.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page to be returned.
    # @option opts [Integer] :count The number of items to return. Default 10. Max 50.
    # @option opts [String] :sort How to sort the items.
    # @return [Array<(InlineResponse2005, Fixnum, Hash)>] InlineResponse2005 data, response status code and response headers
    def get_brands_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BrandsApi.get_brands ..."
      end
      if opts[:'sort'] && !['-createdAt', 'createdAt', '-updatedAt', 'updatedAt', '-name', 'name'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of -createdAt, createdAt, -updatedAt, updatedAt, -name, name'
      end
      # resource path
      local_var_path = "/brands".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2005')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BrandsApi#get_brands\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end