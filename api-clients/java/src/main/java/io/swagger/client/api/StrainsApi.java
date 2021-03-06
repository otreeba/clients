/*
 * Otreeba Open Cannabis API
 * This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).
 *
 * OpenAPI spec version: 1.0.0
 * Contact: api@otreeba.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.api;

import io.swagger.client.ApiCallback;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.ApiResponse;
import io.swagger.client.Configuration;
import io.swagger.client.Pair;
import io.swagger.client.ProgressRequestBody;
import io.swagger.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import io.swagger.client.model.InlineResponse20011;
import io.swagger.client.model.Strain;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StrainsApi {
    private ApiClient apiClient;

    public StrainsApi() {
        this(Configuration.getDefaultApiClient());
    }

    public StrainsApi(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return apiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    /**
     * Build call for getStrainByOcpc
     * @param ocpc OCPC of the strain to return. (required)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call getStrainByOcpcCall(String ocpc, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/strains/{ocpc}"
            .replaceAll("\\{" + "ocpc" + "\\}", apiClient.escapeString(ocpc.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "api_key" };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call getStrainByOcpcValidateBeforeCall(String ocpc, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'ocpc' is set
        if (ocpc == null) {
            throw new ApiException("Missing the required parameter 'ocpc' when calling getStrainByOcpc(Async)");
        }
        
        
        com.squareup.okhttp.Call call = getStrainByOcpcCall(ocpc, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Find strain by Open Cannabis Product Code (OCPC).
     * Returns a single strain.
     * @param ocpc OCPC of the strain to return. (required)
     * @return Strain
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Strain getStrainByOcpc(String ocpc) throws ApiException {
        ApiResponse<Strain> resp = getStrainByOcpcWithHttpInfo(ocpc);
        return resp.getData();
    }

    /**
     * Find strain by Open Cannabis Product Code (OCPC).
     * Returns a single strain.
     * @param ocpc OCPC of the strain to return. (required)
     * @return ApiResponse&lt;Strain&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Strain> getStrainByOcpcWithHttpInfo(String ocpc) throws ApiException {
        com.squareup.okhttp.Call call = getStrainByOcpcValidateBeforeCall(ocpc, null, null);
        Type localVarReturnType = new TypeToken<Strain>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Find strain by Open Cannabis Product Code (OCPC). (asynchronously)
     * Returns a single strain.
     * @param ocpc OCPC of the strain to return. (required)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call getStrainByOcpcAsync(String ocpc, final ApiCallback<Strain> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = getStrainByOcpcValidateBeforeCall(ocpc, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<Strain>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for getStrains
     * @param page Page to be returned. (optional)
     * @param count The number of items to return. Default 10. Max 50. (optional, default to 10)
     * @param sort How to sort the items. (optional, default to -createdAt)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call getStrainsCall(Integer page, Integer count, String sort, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/strains";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        if (page != null)
        localVarQueryParams.addAll(apiClient.parameterToPairs("", "page", page));
        if (count != null)
        localVarQueryParams.addAll(apiClient.parameterToPairs("", "count", count));
        if (sort != null)
        localVarQueryParams.addAll(apiClient.parameterToPairs("", "sort", sort));

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "api_key" };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call getStrainsValidateBeforeCall(Integer page, Integer count, String sort, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        
        com.squareup.okhttp.Call call = getStrainsCall(page, count, sort, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * Get a list of all current strains.
     * Returns a paginated list of strains.
     * @param page Page to be returned. (optional)
     * @param count The number of items to return. Default 10. Max 50. (optional, default to 10)
     * @param sort How to sort the items. (optional, default to -createdAt)
     * @return InlineResponse20011
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public InlineResponse20011 getStrains(Integer page, Integer count, String sort) throws ApiException {
        ApiResponse<InlineResponse20011> resp = getStrainsWithHttpInfo(page, count, sort);
        return resp.getData();
    }

    /**
     * Get a list of all current strains.
     * Returns a paginated list of strains.
     * @param page Page to be returned. (optional)
     * @param count The number of items to return. Default 10. Max 50. (optional, default to 10)
     * @param sort How to sort the items. (optional, default to -createdAt)
     * @return ApiResponse&lt;InlineResponse20011&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<InlineResponse20011> getStrainsWithHttpInfo(Integer page, Integer count, String sort) throws ApiException {
        com.squareup.okhttp.Call call = getStrainsValidateBeforeCall(page, count, sort, null, null);
        Type localVarReturnType = new TypeToken<InlineResponse20011>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * Get a list of all current strains. (asynchronously)
     * Returns a paginated list of strains.
     * @param page Page to be returned. (optional)
     * @param count The number of items to return. Default 10. Max 50. (optional, default to 10)
     * @param sort How to sort the items. (optional, default to -createdAt)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call getStrainsAsync(Integer page, Integer count, String sort, final ApiCallback<InlineResponse20011> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = getStrainsValidateBeforeCall(page, count, sort, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<InlineResponse20011>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
}
