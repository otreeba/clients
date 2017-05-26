# StrainsApi

All URIs are relative to *https://api.otreeba.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStrainByOcpc**](StrainsApi.md#getStrainByOcpc) | **GET** /strains/{ocpc} | Find strain by Open Cannabis Product Code (OCPC).
[**getStrains**](StrainsApi.md#getStrains) | **GET** /strains | Get a list of all current strains.


<a name="getStrainByOcpc"></a>
# **getStrainByOcpc**
> Strain getStrainByOcpc(ocpc)

Find strain by Open Cannabis Product Code (OCPC).

Returns a single strain.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.StrainsApi;


StrainsApi apiInstance = new StrainsApi();
String ocpc = "ocpc_example"; // String | OCPC of the strain to return.
try {
    Strain result = apiInstance.getStrainByOcpc(ocpc);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StrainsApi#getStrainByOcpc");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ocpc** | **String**| OCPC of the strain to return. |

### Return type

[**Strain**](Strain.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getStrains"></a>
# **getStrains**
> InlineResponse20011 getStrains(page, count, sort)

Get a list of all current strains.

Returns a paginated list of strains.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.StrainsApi;


StrainsApi apiInstance = new StrainsApi();
Integer page = 56; // Integer | Page to be returned.
Integer count = 10; // Integer | The number of items to return. Default 10. Max 50.
String sort = "-createdAt"; // String | How to sort the items.
try {
    InlineResponse20011 result = apiInstance.getStrains(page, count, sort);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StrainsApi#getStrains");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page to be returned. | [optional]
 **count** | **Integer**| The number of items to return. Default 10. Max 50. | [optional] [default to 10]
 **sort** | **String**| How to sort the items. | [optional] [default to -createdAt] [enum: -createdAt, createdAt, -updatedAt, updatedAt, -name, name]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json
