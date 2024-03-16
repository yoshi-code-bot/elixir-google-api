# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Manufacturers.V1.Model.Attributes do
  @moduledoc """
  Attributes of the product. For more information, see https://support.google.com/manufacturers/answer/6124116.

  ## Attributes

  *   `theme` (*type:* `String.t`, *default:* `nil`) - The theme of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#theme.
  *   `productLine` (*type:* `String.t`, *default:* `nil`) - The name of the group of products related to the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productline.
  *   `ageGroup` (*type:* `String.t`, *default:* `nil`) - The target age group of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#agegroup.
  *   `color` (*type:* `String.t`, *default:* `nil`) - The color of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#color.
  *   `imageLink` (*type:* `GoogleApi.Manufacturers.V1.Model.Image.t`, *default:* `nil`) - The image of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#image.
  *   `suggestedRetailPrice` (*type:* `GoogleApi.Manufacturers.V1.Model.Price.t`, *default:* `nil`) - The suggested retail price (MSRP) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#price.
  *   `format` (*type:* `String.t`, *default:* `nil`) - The format of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#format.
  *   `certification` (*type:* `list(GoogleApi.Manufacturers.V1.Model.GoogleShoppingManufacturersV1ProductCertification.t)`, *default:* `nil`) - Optional. List of certifications claimed by this product.
  *   `productHighlight` (*type:* `list(String.t)`, *default:* `nil`) - The product highlights. For more information, see https://support.google.com/manufacturers/answer/10066942
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#description.
  *   `productType` (*type:* `list(String.t)`, *default:* `nil`) - The type or category of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#producttype.
  *   `scent` (*type:* `String.t`, *default:* `nil`) - The scent of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#scent.
  *   `capacity` (*type:* `GoogleApi.Manufacturers.V1.Model.Capacity.t`, *default:* `nil`) - The capacity of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#capacity.
  *   `sizeSystem` (*type:* `String.t`, *default:* `nil`) - The size system of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#sizesystem.
  *   `count` (*type:* `GoogleApi.Manufacturers.V1.Model.Count.t`, *default:* `nil`) - The count of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#count.
  *   `itemGroupId` (*type:* `String.t`, *default:* `nil`) - The item group id of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#itemgroupid.
  *   `targetClientId` (*type:* `String.t`, *default:* `nil`) - The target client id. Should only be used in the accounts of the data partners. For more information, see https://support.google.com/manufacturers/answer/10857344
  *   `videoLink` (*type:* `list(String.t)`, *default:* `nil`) - The videos of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#video.
  *   `gtin` (*type:* `list(String.t)`, *default:* `nil`) - The Global Trade Item Number (GTIN) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#gtin.
  *   `size` (*type:* `String.t`, *default:* `nil`) - The size of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#size.
  *   `flavor` (*type:* `String.t`, *default:* `nil`) - The flavor of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#flavor.
  *   `pattern` (*type:* `String.t`, *default:* `nil`) - The pattern of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#pattern.
  *   `nutrition` (*type:* `GoogleApi.Manufacturers.V1.Model.Nutrition.t`, *default:* `nil`) - Nutrition Attributes. See more at https://support.google.com/manufacturers/answer/12098458#food-servings.
  *   `excludedDestination` (*type:* `list(String.t)`, *default:* `nil`) - A list of excluded destinations such as "ClientExport", "ClientShoppingCatalog" or "PartnerShoppingCatalog". For more information, see https://support.google.com/manufacturers/answer/7443550
  *   `virtualModelLink` (*type:* `String.t`, *default:* `nil`) - Virtual Model (3d) asset link.
  *   `includedDestination` (*type:* `list(String.t)`, *default:* `nil`) - A list of included destinations such as "ClientExport", "ClientShoppingCatalog" or "PartnerShoppingCatalog". For more information, see https://support.google.com/manufacturers/answer/7443550
  *   `mpn` (*type:* `String.t`, *default:* `nil`) - The Manufacturer Part Number (MPN) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#mpn.
  *   `grocery` (*type:* `GoogleApi.Manufacturers.V1.Model.Grocery.t`, *default:* `nil`) - Grocery Attributes. See more at https://support.google.com/manufacturers/answer/12098458#grocery.
  *   `disclosureDate` (*type:* `String.t`, *default:* `nil`) - The disclosure date of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#disclosure.
  *   `additionalImageLink` (*type:* `list(GoogleApi.Manufacturers.V1.Model.Image.t)`, *default:* `nil`) - The additional images of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#addlimage.
  *   `productPageUrl` (*type:* `String.t`, *default:* `nil`) - The URL of the detail page of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productpage.
  *   `sizeType` (*type:* `list(String.t)`, *default:* `nil`) - The size type of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#sizetype.
  *   `productDetail` (*type:* `list(GoogleApi.Manufacturers.V1.Model.ProductDetail.t)`, *default:* `nil`) - The details of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productdetail.
  *   `productName` (*type:* `String.t`, *default:* `nil`) - The canonical name of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productname.
  *   `material` (*type:* `String.t`, *default:* `nil`) - The material of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#material.
  *   `releaseDate` (*type:* `String.t`, *default:* `nil`) - The release date of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#release.
  *   `featureDescription` (*type:* `list(GoogleApi.Manufacturers.V1.Model.FeatureDescription.t)`, *default:* `nil`) - The rich format description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#featuredesc.
  *   `richProductContent` (*type:* `list(String.t)`, *default:* `nil`) - Rich product content. For more information, see https://support.google.com/manufacturers/answer/9389865
  *   `brand` (*type:* `String.t`, *default:* `nil`) - The brand name of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#brand.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#title.
  *   `gender` (*type:* `String.t`, *default:* `nil`) - The target gender of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#gender.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :theme => String.t() | nil,
          :productLine => String.t() | nil,
          :ageGroup => String.t() | nil,
          :color => String.t() | nil,
          :imageLink => GoogleApi.Manufacturers.V1.Model.Image.t() | nil,
          :suggestedRetailPrice => GoogleApi.Manufacturers.V1.Model.Price.t() | nil,
          :format => String.t() | nil,
          :certification =>
            list(
              GoogleApi.Manufacturers.V1.Model.GoogleShoppingManufacturersV1ProductCertification.t()
            )
            | nil,
          :productHighlight => list(String.t()) | nil,
          :description => String.t() | nil,
          :productType => list(String.t()) | nil,
          :scent => String.t() | nil,
          :capacity => GoogleApi.Manufacturers.V1.Model.Capacity.t() | nil,
          :sizeSystem => String.t() | nil,
          :count => GoogleApi.Manufacturers.V1.Model.Count.t() | nil,
          :itemGroupId => String.t() | nil,
          :targetClientId => String.t() | nil,
          :videoLink => list(String.t()) | nil,
          :gtin => list(String.t()) | nil,
          :size => String.t() | nil,
          :flavor => String.t() | nil,
          :pattern => String.t() | nil,
          :nutrition => GoogleApi.Manufacturers.V1.Model.Nutrition.t() | nil,
          :excludedDestination => list(String.t()) | nil,
          :virtualModelLink => String.t() | nil,
          :includedDestination => list(String.t()) | nil,
          :mpn => String.t() | nil,
          :grocery => GoogleApi.Manufacturers.V1.Model.Grocery.t() | nil,
          :disclosureDate => String.t() | nil,
          :additionalImageLink => list(GoogleApi.Manufacturers.V1.Model.Image.t()) | nil,
          :productPageUrl => String.t() | nil,
          :sizeType => list(String.t()) | nil,
          :productDetail => list(GoogleApi.Manufacturers.V1.Model.ProductDetail.t()) | nil,
          :productName => String.t() | nil,
          :material => String.t() | nil,
          :releaseDate => String.t() | nil,
          :featureDescription =>
            list(GoogleApi.Manufacturers.V1.Model.FeatureDescription.t()) | nil,
          :richProductContent => list(String.t()) | nil,
          :brand => String.t() | nil,
          :title => String.t() | nil,
          :gender => String.t() | nil
        }

  field(:theme)
  field(:productLine)
  field(:ageGroup)
  field(:color)
  field(:imageLink, as: GoogleApi.Manufacturers.V1.Model.Image)
  field(:suggestedRetailPrice, as: GoogleApi.Manufacturers.V1.Model.Price)
  field(:format)

  field(:certification,
    as: GoogleApi.Manufacturers.V1.Model.GoogleShoppingManufacturersV1ProductCertification,
    type: :list
  )

  field(:productHighlight, type: :list)
  field(:description)
  field(:productType, type: :list)
  field(:scent)
  field(:capacity, as: GoogleApi.Manufacturers.V1.Model.Capacity)
  field(:sizeSystem)
  field(:count, as: GoogleApi.Manufacturers.V1.Model.Count)
  field(:itemGroupId)
  field(:targetClientId)
  field(:videoLink, type: :list)
  field(:gtin, type: :list)
  field(:size)
  field(:flavor)
  field(:pattern)
  field(:nutrition, as: GoogleApi.Manufacturers.V1.Model.Nutrition)
  field(:excludedDestination, type: :list)
  field(:virtualModelLink)
  field(:includedDestination, type: :list)
  field(:mpn)
  field(:grocery, as: GoogleApi.Manufacturers.V1.Model.Grocery)
  field(:disclosureDate)
  field(:additionalImageLink, as: GoogleApi.Manufacturers.V1.Model.Image, type: :list)
  field(:productPageUrl)
  field(:sizeType, type: :list)
  field(:productDetail, as: GoogleApi.Manufacturers.V1.Model.ProductDetail, type: :list)
  field(:productName)
  field(:material)
  field(:releaseDate)
  field(:featureDescription, as: GoogleApi.Manufacturers.V1.Model.FeatureDescription, type: :list)
  field(:richProductContent, type: :list)
  field(:brand)
  field(:title)
  field(:gender)
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.Attributes do
  def decode(value, options) do
    GoogleApi.Manufacturers.V1.Model.Attributes.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.Attributes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
