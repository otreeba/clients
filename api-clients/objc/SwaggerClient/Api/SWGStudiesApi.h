#import <Foundation/Foundation.h>
#import "SWGInlineResponse20012.h"
#import "SWGInlineResponse20013.h"
#import "SWGStudy.h"
#import "SWGApi.h"

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
*/



@interface SWGStudiesApi: NSObject <SWGApi>

extern NSString* kSWGStudiesApiErrorDomain;
extern NSInteger kSWGStudiesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get a list of all current studies.
/// Returns a paginated list of studies.
///
/// @param page Page to be returned. (optional)
/// @param count The number of items to return. Default 10. Max 50. (optional) (default to 10)
/// @param sort How to sort the items. (optional) (default to -createdAt)
/// 
///  code:200 message:"Successful operation.",
///  code:400 message:"Invalid arguments supplied.",
///  code:401 message:"Unauthorized action.",
///  code:404 message:"Study not found."
///
/// @return SWGInlineResponse20012*
-(NSURLSessionTask*) getStudiesWithPage: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
    completionHandler: (void (^)(SWGInlineResponse20012* output, NSError* error)) handler;


/// Get a list of all current studies for a given condition.
/// Returns a paginated list of studies.
///
/// @param conditionSlug Slug of the condition to return studies for.
/// @param page Page to be returned. (optional)
/// @param count The number of items to return. Default 10. Max 50. (optional) (default to 10)
/// @param sort How to sort the items. (optional) (default to -year)
/// 
///  code:200 message:"Successful operation.",
///  code:400 message:"Invalid arguments supplied.",
///  code:401 message:"Unauthorized action.",
///  code:404 message:"Condition."
///
/// @return SWGInlineResponse20013*
-(NSURLSessionTask*) getStudiesByConditionWithConditionSlug: (NSString*) conditionSlug
    page: (NSNumber*) page
    count: (NSNumber*) count
    sort: (NSString*) sort
    completionHandler: (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;


/// Get a list of all current conditions for studies.
/// Returns a list of all current conditions for studies.
///
/// @param sort How to sort the items. (optional) (default to name)
/// 
///  code:200 message:"Successful operation.",
///  code:400 message:"Invalid arguments supplied.",
///  code:401 message:"Unauthorized action."
///
/// @return NSObject*
-(NSURLSessionTask*) getStudiesConditionsWithSort: (NSString*) sort
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Find study by DOI, PubMed ID, or slug.
/// Returns a single study.
///
/// @param identifierType Type of identifier to for the study to return.
/// @param identifier Identifier for the study to return.
/// 
///  code:200 message:"Successful operation.",
///  code:400 message:"Invalid argument supplied.",
///  code:401 message:"Unauthorized action.",
///  code:404 message:"Study not found."
///
/// @return SWGStudy*
-(NSURLSessionTask*) getStudyByIdentifierWithIdentifierType: (NSString*) identifierType
    identifier: (NSString*) identifier
    completionHandler: (void (^)(SWGStudy* output, NSError* error)) handler;



@end
