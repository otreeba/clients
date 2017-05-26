/**
 * Otreeba Open Cannabis API
 * This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).
 *
 * OpenAPI spec version: 1.0.0
 * Contact: api@otreeba.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'model/Flower', 'model/InlineResponse2004'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/Flower'), require('../model/InlineResponse2004'));
  } else {
    // Browser globals (root is window)
    if (!root.OtreebaOpenCannabisApi) {
      root.OtreebaOpenCannabisApi = {};
    }
    root.OtreebaOpenCannabisApi.FlowersApi = factory(root.OtreebaOpenCannabisApi.ApiClient, root.OtreebaOpenCannabisApi.Flower, root.OtreebaOpenCannabisApi.InlineResponse2004);
  }
}(this, function(ApiClient, Flower, InlineResponse2004) {
  'use strict';

  /**
   * Flowers service.
   * @module api/FlowersApi
   * @version 1.0.0
   */

  /**
   * Constructs a new FlowersApi. 
   * @alias module:api/FlowersApi
   * @class
   * @param {module:ApiClient} apiClient Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the getFlowerByOcpc operation.
     * @callback module:api/FlowersApi~getFlowerByOcpcCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Flower} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Find flower by Open Cannabis Product Code (OCPC).
     * Returns a single flower.
     * @param {String} ocpc OCPC of the flower to return.
     * @param {module:api/FlowersApi~getFlowerByOcpcCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Flower}
     */
    this.getFlowerByOcpc = function(ocpc, callback) {
      var postBody = null;

      // verify the required parameter 'ocpc' is set
      if (ocpc == undefined || ocpc == null) {
        throw new Error("Missing the required parameter 'ocpc' when calling getFlowerByOcpc");
      }


      var pathParams = {
        'ocpc': ocpc
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = Flower;

      return this.apiClient.callApi(
        '/flowers/{ocpc}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getFlowers operation.
     * @callback module:api/FlowersApi~getFlowersCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2004} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get a list of all current flowers.
     * Returns a paginated list of flowers.
     * @param {Object} opts Optional parameters
     * @param {Number} opts.page Page to be returned.
     * @param {Number} opts.count The number of items to return. Default 10. Max 50. (default to 10)
     * @param {module:model/String} opts.sort How to sort the items. (default to -createdAt)
     * @param {module:api/FlowersApi~getFlowersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2004}
     */
    this.getFlowers = function(opts, callback) {
      opts = opts || {};
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
        'page': opts['page'],
        'count': opts['count'],
        'sort': opts['sort']
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = [];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2004;

      return this.apiClient.callApi(
        '/flowers', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));