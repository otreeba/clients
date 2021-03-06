/**
 * Otreeba Open Cannabis API
 * This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).
 *
 * OpenAPI spec version: 1.0.0
 * Contact: api@otreeba.com
 *
 * NOTE: This class is auto generated by the swagger code generator 2.2.3.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */



#include "Strain.h"

namespace io {
namespace swagger {
namespace client {
namespace model {

Strain::Strain()
{
    m_Name = U("");
    m_Ocpc = U("");
    m_OcpcIsSet = false;
    m_SeedCompanyIsSet = false;
    m_Qr = U("");
    m_QrIsSet = false;
    m_Url = U("");
    m_UrlIsSet = false;
    m_Image = U("");
    m_ImageIsSet = false;
    m_LineageIsSet = false;
    m_GeneticsIsSet = false;
    m_ChildrenIsSet = false;
    m_CreatedAt = utility::datetime();
    m_CreatedAtIsSet = false;
    m_UpdatedAt = utility::datetime();
    m_UpdatedAtIsSet = false;
}

Strain::~Strain()
{
}

void Strain::validate()
{
    // TODO: implement validation
}

web::json::value Strain::toJson() const
{
    web::json::value val = web::json::value::object();

    val[U("name")] = ModelBase::toJson(m_Name);
    if(m_OcpcIsSet)
    {
        val[U("ocpc")] = ModelBase::toJson(m_Ocpc);
    }
    if(m_SeedCompanyIsSet)
    {
        val[U("seedCompany")] = ModelBase::toJson(m_SeedCompany);
    }
    if(m_QrIsSet)
    {
        val[U("qr")] = ModelBase::toJson(m_Qr);
    }
    if(m_UrlIsSet)
    {
        val[U("url")] = ModelBase::toJson(m_Url);
    }
    if(m_ImageIsSet)
    {
        val[U("image")] = ModelBase::toJson(m_Image);
    }
    if(m_LineageIsSet)
    {
        val[U("lineage")] = ModelBase::toJson(m_Lineage);
    }
    if(m_GeneticsIsSet)
    {
        val[U("genetics")] = ModelBase::toJson(m_Genetics);
    }
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Children )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        if(jsonArray.size() > 0)
        {
            val[U("children")] = web::json::value::array(jsonArray);
        }
    }
    if(m_CreatedAtIsSet)
    {
        val[U("createdAt")] = ModelBase::toJson(m_CreatedAt);
    }
    if(m_UpdatedAtIsSet)
    {
        val[U("updatedAt")] = ModelBase::toJson(m_UpdatedAt);
    }

    return val;
}

void Strain::fromJson(web::json::value& val)
{
    setName(ModelBase::stringFromJson(val[U("name")]));
    if(val.has_field(U("ocpc")))
    {
        setOcpc(ModelBase::stringFromJson(val[U("ocpc")]));
    }
    if(val.has_field(U("seedCompany")))
    {
        if(!val[U("seedCompany")].is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(val[U("seedCompany")]);
            setSeedCompany( newItem );
        }
    }
    if(val.has_field(U("qr")))
    {
        setQr(ModelBase::stringFromJson(val[U("qr")]));
    }
    if(val.has_field(U("url")))
    {
        setUrl(ModelBase::stringFromJson(val[U("url")]));
    }
    if(val.has_field(U("image")))
    {
        setImage(ModelBase::stringFromJson(val[U("image")]));
    }
    if(val.has_field(U("lineage")))
    {
        if(!val[U("lineage")].is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(val[U("lineage")]);
            setLineage( newItem );
        }
    }
    if(val.has_field(U("genetics")))
    {
        if(!val[U("genetics")].is_null())
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromJson(val[U("genetics")]);
            setGenetics( newItem );
        }
    }
    {
        m_Children.clear();
        std::vector<web::json::value> jsonArray;
        if(val.has_field(U("children")))
        {
        for( auto& item : val[U("children")].as_array() )
        {
            m_Children.push_back(ModelBase::stringFromJson(item));
        }
        }
    }
    if(val.has_field(U("createdAt")))
    {
        setCreatedAt(ModelBase::dateFromJson(val[U("createdAt")]));
    }
    if(val.has_field(U("updatedAt")))
    {
        setUpdatedAt(ModelBase::dateFromJson(val[U("updatedAt")]));
    }
}

void Strain::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix[namePrefix.size() - 1] != U('.'))
    {
        namePrefix += U(".");
    }

    multipart->add(ModelBase::toHttpContent(namePrefix + U("name"), m_Name));
    if(m_OcpcIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("ocpc"), m_Ocpc));
        
    }
    if(m_SeedCompanyIsSet)
    {
        if (m_SeedCompany.get())
        {
            m_SeedCompany->toMultipart(multipart, U("seedCompany."));
        }
        
    }
    if(m_QrIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("qr"), m_Qr));
        
    }
    if(m_UrlIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("url"), m_Url));
        
    }
    if(m_ImageIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("image"), m_Image));
        
    }
    if(m_LineageIsSet)
    {
        if (m_Lineage.get())
        {
            m_Lineage->toMultipart(multipart, U("lineage."));
        }
        
    }
    if(m_GeneticsIsSet)
    {
        if (m_Genetics.get())
        {
            m_Genetics->toMultipart(multipart, U("genetics."));
        }
        
    }
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Children )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        
        if(jsonArray.size() > 0)
        {
            multipart->add(ModelBase::toHttpContent(namePrefix + U("children"), web::json::value::array(jsonArray), U("application/json")));
        }
    }
    if(m_CreatedAtIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("createdAt"), m_CreatedAt));
        
    }
    if(m_UpdatedAtIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + U("updatedAt"), m_UpdatedAt));
        
    }
}

void Strain::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix[namePrefix.size() - 1] != U('.'))
    {
        namePrefix += U(".");
    }

    setName(ModelBase::stringFromHttpContent(multipart->getContent(U("name"))));
    if(multipart->hasContent(U("ocpc")))
    {
        setOcpc(ModelBase::stringFromHttpContent(multipart->getContent(U("ocpc"))));
    }
    if(multipart->hasContent(U("seedCompany")))
    {
        if(multipart->hasContent(U("seedCompany")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, U("seedCompany."));
            setSeedCompany( newItem );
        }
    }
    if(multipart->hasContent(U("qr")))
    {
        setQr(ModelBase::stringFromHttpContent(multipart->getContent(U("qr"))));
    }
    if(multipart->hasContent(U("url")))
    {
        setUrl(ModelBase::stringFromHttpContent(multipart->getContent(U("url"))));
    }
    if(multipart->hasContent(U("image")))
    {
        setImage(ModelBase::stringFromHttpContent(multipart->getContent(U("image"))));
    }
    if(multipart->hasContent(U("lineage")))
    {
        if(multipart->hasContent(U("lineage")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, U("lineage."));
            setLineage( newItem );
        }
    }
    if(multipart->hasContent(U("genetics")))
    {
        if(multipart->hasContent(U("genetics")))
        {
            std::shared_ptr<Object> newItem(nullptr);
            newItem->fromMultiPart(multipart, U("genetics."));
            setGenetics( newItem );
        }
    }
    {
        m_Children.clear();
        if(multipart->hasContent(U("children")))
        {

        web::json::value jsonArray = web::json::value::parse(ModelBase::stringFromHttpContent(multipart->getContent(U("children"))));
        for( auto& item : jsonArray.as_array() )
        {
            m_Children.push_back(ModelBase::stringFromJson(item));
        }
        }
    }
    if(multipart->hasContent(U("createdAt")))
    {
        setCreatedAt(ModelBase::dateFromHttpContent(multipart->getContent(U("createdAt"))));
    }
    if(multipart->hasContent(U("updatedAt")))
    {
        setUpdatedAt(ModelBase::dateFromHttpContent(multipart->getContent(U("updatedAt"))));
    }
}

utility::string_t Strain::getName() const
{
    return m_Name;
}


void Strain::setName(utility::string_t value)
{
    m_Name = value;
    
}
utility::string_t Strain::getOcpc() const
{
    return m_Ocpc;
}


void Strain::setOcpc(utility::string_t value)
{
    m_Ocpc = value;
    m_OcpcIsSet = true;
}
bool Strain::ocpcIsSet() const
{
    return m_OcpcIsSet;
}

void Strain::unsetOcpc()
{
    m_OcpcIsSet = false;
}

std::shared_ptr<Object> Strain::getSeedCompany() const
{
    return m_SeedCompany;
}


void Strain::setSeedCompany(std::shared_ptr<Object> value)
{
    m_SeedCompany = value;
    m_SeedCompanyIsSet = true;
}
bool Strain::seedCompanyIsSet() const
{
    return m_SeedCompanyIsSet;
}

void Strain::unsetSeedCompany()
{
    m_SeedCompanyIsSet = false;
}

utility::string_t Strain::getQr() const
{
    return m_Qr;
}


void Strain::setQr(utility::string_t value)
{
    m_Qr = value;
    m_QrIsSet = true;
}
bool Strain::qrIsSet() const
{
    return m_QrIsSet;
}

void Strain::unsetQr()
{
    m_QrIsSet = false;
}

utility::string_t Strain::getUrl() const
{
    return m_Url;
}


void Strain::setUrl(utility::string_t value)
{
    m_Url = value;
    m_UrlIsSet = true;
}
bool Strain::urlIsSet() const
{
    return m_UrlIsSet;
}

void Strain::unsetUrl()
{
    m_UrlIsSet = false;
}

utility::string_t Strain::getImage() const
{
    return m_Image;
}


void Strain::setImage(utility::string_t value)
{
    m_Image = value;
    m_ImageIsSet = true;
}
bool Strain::imageIsSet() const
{
    return m_ImageIsSet;
}

void Strain::unsetImage()
{
    m_ImageIsSet = false;
}

std::shared_ptr<Object> Strain::getLineage() const
{
    return m_Lineage;
}


void Strain::setLineage(std::shared_ptr<Object> value)
{
    m_Lineage = value;
    m_LineageIsSet = true;
}
bool Strain::lineageIsSet() const
{
    return m_LineageIsSet;
}

void Strain::unsetLineage()
{
    m_LineageIsSet = false;
}

std::shared_ptr<Object> Strain::getGenetics() const
{
    return m_Genetics;
}


void Strain::setGenetics(std::shared_ptr<Object> value)
{
    m_Genetics = value;
    m_GeneticsIsSet = true;
}
bool Strain::geneticsIsSet() const
{
    return m_GeneticsIsSet;
}

void Strain::unsetGenetics()
{
    m_GeneticsIsSet = false;
}

std::vector<utility::string_t>& Strain::getChildren()
{
    return m_Children;
}

void Strain::setChildren(std::vector<utility::string_t> value)
{
    m_Children = value;
    m_ChildrenIsSet = true;
}
bool Strain::childrenIsSet() const
{
    return m_ChildrenIsSet;
}

void Strain::unsetChildren()
{
    m_ChildrenIsSet = false;
}

utility::datetime Strain::getCreatedAt() const
{
    return m_CreatedAt;
}


void Strain::setCreatedAt(utility::datetime value)
{
    m_CreatedAt = value;
    m_CreatedAtIsSet = true;
}
bool Strain::createdAtIsSet() const
{
    return m_CreatedAtIsSet;
}

void Strain::unsetCreatedAt()
{
    m_CreatedAtIsSet = false;
}

utility::datetime Strain::getUpdatedAt() const
{
    return m_UpdatedAt;
}


void Strain::setUpdatedAt(utility::datetime value)
{
    m_UpdatedAt = value;
    m_UpdatedAtIsSet = true;
}
bool Strain::updatedAtIsSet() const
{
    return m_UpdatedAtIsSet;
}

void Strain::unsetUpdatedAt()
{
    m_UpdatedAtIsSet = false;
}

}
}
}
}

