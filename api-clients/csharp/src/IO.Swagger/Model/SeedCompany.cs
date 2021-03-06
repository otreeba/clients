/* 
 * Otreeba Open Cannabis API
 *
 * This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).
 *
 * OpenAPI spec version: 1.0.0
 * Contact: api@otreeba.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// SeedCompany
    /// </summary>
    [DataContract]
    public partial class SeedCompany :  IEquatable<SeedCompany>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SeedCompany" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected SeedCompany() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="SeedCompany" /> class.
        /// </summary>
        /// <param name="Name">Name of the seed company. (required).</param>
        /// <param name="Ocpc">Open Cannabis Product Code for the seed company..</param>
        /// <param name="Description">Description of the seed company..</param>
        /// <param name="Qr">URL for QR that leads to page on Cannabis Reports..</param>
        /// <param name="Url">URL for seed company on Cannabis Reports..</param>
        /// <param name="Image">URL for logo for seed company..</param>
        /// <param name="Lineage">Object of countries that this seed company has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;}.</param>
        /// <param name="Strains">OCPCs of the strains from this seed company..</param>
        /// <param name="CreatedAt">Date and time record was created, UTC..</param>
        /// <param name="UpdatedAt">Date and time record was updated, UTC..</param>
        public SeedCompany(string Name = default(string), string Ocpc = default(string), string Description = default(string), string Qr = default(string), string Url = default(string), string Image = default(string), Object Lineage = default(Object), List<string> Strains = default(List<string>), DateTime? CreatedAt = default(DateTime?), DateTime? UpdatedAt = default(DateTime?))
        {
            // to ensure "Name" is required (not null)
            if (Name == null)
            {
                throw new InvalidDataException("Name is a required property for SeedCompany and cannot be null");
            }
            else
            {
                this.Name = Name;
            }
            this.Ocpc = Ocpc;
            this.Description = Description;
            this.Qr = Qr;
            this.Url = Url;
            this.Image = Image;
            this.Lineage = Lineage;
            this.Strains = Strains;
            this.CreatedAt = CreatedAt;
            this.UpdatedAt = UpdatedAt;
        }
        
        /// <summary>
        /// Name of the seed company.
        /// </summary>
        /// <value>Name of the seed company.</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// Open Cannabis Product Code for the seed company.
        /// </summary>
        /// <value>Open Cannabis Product Code for the seed company.</value>
        [DataMember(Name="ocpc", EmitDefaultValue=false)]
        public string Ocpc { get; set; }

        /// <summary>
        /// Description of the seed company.
        /// </summary>
        /// <value>Description of the seed company.</value>
        [DataMember(Name="description", EmitDefaultValue=false)]
        public string Description { get; set; }

        /// <summary>
        /// URL for QR that leads to page on Cannabis Reports.
        /// </summary>
        /// <value>URL for QR that leads to page on Cannabis Reports.</value>
        [DataMember(Name="qr", EmitDefaultValue=false)]
        public string Qr { get; set; }

        /// <summary>
        /// URL for seed company on Cannabis Reports.
        /// </summary>
        /// <value>URL for seed company on Cannabis Reports.</value>
        [DataMember(Name="url", EmitDefaultValue=false)]
        public string Url { get; set; }

        /// <summary>
        /// URL for logo for seed company.
        /// </summary>
        /// <value>URL for logo for seed company.</value>
        [DataMember(Name="image", EmitDefaultValue=false)]
        public string Image { get; set; }

        /// <summary>
        /// Object of countries that this seed company has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;}
        /// </summary>
        /// <value>Object of countries that this seed company has lineages from. {&#39;Country Name&#39; &#x3D;&gt; &#39;ISO 3166-1 Two Letter Country Code&#39;}</value>
        [DataMember(Name="lineage", EmitDefaultValue=false)]
        public Object Lineage { get; set; }

        /// <summary>
        /// OCPCs of the strains from this seed company.
        /// </summary>
        /// <value>OCPCs of the strains from this seed company.</value>
        [DataMember(Name="strains", EmitDefaultValue=false)]
        public List<string> Strains { get; set; }

        /// <summary>
        /// Date and time record was created, UTC.
        /// </summary>
        /// <value>Date and time record was created, UTC.</value>
        [DataMember(Name="createdAt", EmitDefaultValue=false)]
        public DateTime? CreatedAt { get; set; }

        /// <summary>
        /// Date and time record was updated, UTC.
        /// </summary>
        /// <value>Date and time record was updated, UTC.</value>
        [DataMember(Name="updatedAt", EmitDefaultValue=false)]
        public DateTime? UpdatedAt { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class SeedCompany {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Ocpc: ").Append(Ocpc).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  Qr: ").Append(Qr).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  Lineage: ").Append(Lineage).Append("\n");
            sb.Append("  Strains: ").Append(Strains).Append("\n");
            sb.Append("  CreatedAt: ").Append(CreatedAt).Append("\n");
            sb.Append("  UpdatedAt: ").Append(UpdatedAt).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            return this.Equals(obj as SeedCompany);
        }

        /// <summary>
        /// Returns true if SeedCompany instances are equal
        /// </summary>
        /// <param name="other">Instance of SeedCompany to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SeedCompany other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Name == other.Name ||
                    this.Name != null &&
                    this.Name.Equals(other.Name)
                ) && 
                (
                    this.Ocpc == other.Ocpc ||
                    this.Ocpc != null &&
                    this.Ocpc.Equals(other.Ocpc)
                ) && 
                (
                    this.Description == other.Description ||
                    this.Description != null &&
                    this.Description.Equals(other.Description)
                ) && 
                (
                    this.Qr == other.Qr ||
                    this.Qr != null &&
                    this.Qr.Equals(other.Qr)
                ) && 
                (
                    this.Url == other.Url ||
                    this.Url != null &&
                    this.Url.Equals(other.Url)
                ) && 
                (
                    this.Image == other.Image ||
                    this.Image != null &&
                    this.Image.Equals(other.Image)
                ) && 
                (
                    this.Lineage == other.Lineage ||
                    this.Lineage != null &&
                    this.Lineage.Equals(other.Lineage)
                ) && 
                (
                    this.Strains == other.Strains ||
                    this.Strains != null &&
                    this.Strains.SequenceEqual(other.Strains)
                ) && 
                (
                    this.CreatedAt == other.CreatedAt ||
                    this.CreatedAt != null &&
                    this.CreatedAt.Equals(other.CreatedAt)
                ) && 
                (
                    this.UpdatedAt == other.UpdatedAt ||
                    this.UpdatedAt != null &&
                    this.UpdatedAt.Equals(other.UpdatedAt)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            // credit: http://stackoverflow.com/a/263416/677735
            unchecked // Overflow is fine, just wrap
            {
                int hash = 41;
                // Suitable nullity checks etc, of course :)
                if (this.Name != null)
                    hash = hash * 59 + this.Name.GetHashCode();
                if (this.Ocpc != null)
                    hash = hash * 59 + this.Ocpc.GetHashCode();
                if (this.Description != null)
                    hash = hash * 59 + this.Description.GetHashCode();
                if (this.Qr != null)
                    hash = hash * 59 + this.Qr.GetHashCode();
                if (this.Url != null)
                    hash = hash * 59 + this.Url.GetHashCode();
                if (this.Image != null)
                    hash = hash * 59 + this.Image.GetHashCode();
                if (this.Lineage != null)
                    hash = hash * 59 + this.Lineage.GetHashCode();
                if (this.Strains != null)
                    hash = hash * 59 + this.Strains.GetHashCode();
                if (this.CreatedAt != null)
                    hash = hash * 59 + this.CreatedAt.GetHashCode();
                if (this.UpdatedAt != null)
                    hash = hash * 59 + this.UpdatedAt.GetHashCode();
                return hash;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
