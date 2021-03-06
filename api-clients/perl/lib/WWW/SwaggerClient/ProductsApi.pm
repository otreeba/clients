=begin comment

Otreeba Open Cannabis API

This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).

OpenAPI spec version: 1.0.0
Contact: api@otreeba.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::ProductsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# get_product_by_ocpc
#
# Find product by Open Cannabis Product Code (OCPC).
# 
# @param string $ocpc OCPC of the product to return. (required)
{
    my $params = {
    'ocpc' => {
        data_type => 'string',
        description => 'OCPC of the product to return.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_product_by_ocpc' } = { 
    	summary => 'Find product by Open Cannabis Product Code (OCPC).',
        params => $params,
        returns => 'Product',
        };
}
# @return Product
#
sub get_product_by_ocpc {
    my ($self, %args) = @_;

    # verify the required parameter 'ocpc' is set
    unless (exists $args{'ocpc'}) {
      croak("Missing the required parameter 'ocpc' when calling get_product_by_ocpc");
    }

    # parse inputs
    my $_resource_path = '/products/{ocpc}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'ocpc'}) {
        my $_base_variable = "{" . "ocpc" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'ocpc'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Product', $response);
    return $_response_object;
}

#
# get_products
#
# Get a list of all current products.
# 
# @param int $page Page to be returned. (optional)
# @param int $count The number of items to return. Default 10. Max 50. (optional, default to 10)
# @param string $sort How to sort the items. (optional, default to -createdAt)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Page to be returned.',
        required => '0',
    },
    'count' => {
        data_type => 'int',
        description => 'The number of items to return. Default 10. Max 50.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'How to sort the items.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_products' } = { 
    	summary => 'Get a list of all current products.',
        params => $params,
        returns => 'InlineResponse20010',
        };
}
# @return InlineResponse20010
#
sub get_products {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/products';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'count'}) {
        $query_params->{'count'} = $self->{api_client}->to_query_value($args{'count'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20010', $response);
    return $_response_object;
}

1;
