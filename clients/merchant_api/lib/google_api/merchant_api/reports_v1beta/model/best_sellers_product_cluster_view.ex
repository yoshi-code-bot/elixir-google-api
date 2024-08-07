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

defmodule GoogleApi.MerchantAPI.Reports_v1beta.Model.BestSellersProductClusterView do
  @moduledoc """
  Fields available for query in `best_sellers_product_cluster_view` table. [Best sellers](https://support.google.com/merchants/answer/9488679) report with top product clusters. A product cluster is a grouping for different offers and variants that represent the same product, for example, Google Pixel 7. Values are only set for fields requested explicitly in the request's search query.

  ## Attributes

  *   `brand` (*type:* `String.t`, *default:* `nil`) - Brand of the product cluster.
  *   `brandInventoryStatus` (*type:* `String.t`, *default:* `nil`) - Whether there is at least one product of the brand currently `IN_STOCK` in your product data source in at least one of the countries, all products are `OUT_OF_STOCK` in your product data source in all countries, or `NOT_IN_INVENTORY`. The field doesn't take the Best sellers report country filter into account.
  *   `categoryL1` (*type:* `String.t`, *default:* `nil`) - Product category (1st level) of the product cluster, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `categoryL2` (*type:* `String.t`, *default:* `nil`) - Product category (2nd level) of the product cluster, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `categoryL3` (*type:* `String.t`, *default:* `nil`) - Product category (3rd level) of the product cluster, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `categoryL4` (*type:* `String.t`, *default:* `nil`) - Product category (4th level) of the product cluster, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `categoryL5` (*type:* `String.t`, *default:* `nil`) - Product category (5th level) of the product cluster, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).
  *   `inventoryStatus` (*type:* `String.t`, *default:* `nil`) - Whether the product cluster is `IN_STOCK` in your product data source in at least one of the countries, `OUT_OF_STOCK` in your product data source in all countries, or `NOT_IN_INVENTORY` at all. The field doesn't take the Best sellers report country filter into account.
  *   `previousRank` (*type:* `String.t`, *default:* `nil`) - Popularity rank in the previous week or month.
  *   `previousRelativeDemand` (*type:* `String.t`, *default:* `nil`) - Estimated demand in relation to the product cluster with the highest popularity rank in the same category and country in the previous week or month.
  *   `rank` (*type:* `String.t`, *default:* `nil`) - Popularity of the product cluster on Ads and organic surfaces, in the selected category and country, based on the estimated number of units sold.
  *   `relativeDemand` (*type:* `String.t`, *default:* `nil`) - Estimated demand in relation to the product cluster with the highest popularity rank in the same category and country.
  *   `relativeDemandChange` (*type:* `String.t`, *default:* `nil`) - Change in the estimated demand. Whether it rose, sank or remained flat.
  *   `reportCategoryId` (*type:* `String.t`, *default:* `nil`) - Google product category ID to calculate the ranking for, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436). Required in the `SELECT` clause. If a `WHERE` condition on `report_category_id` is not specified in the query, rankings for all top-level categories are returned.
  *   `reportCountryCode` (*type:* `String.t`, *default:* `nil`) - Country where the ranking is calculated. Represented in the ISO 3166 format. Required in the `SELECT` clause. Condition on `report_country_code` is required in the `WHERE` clause.
  *   `reportDate` (*type:* `GoogleApi.MerchantAPI.Reports_v1beta.Model.Date.t`, *default:* `nil`) - Report date. The value of this field can only be one of the following: * The first day of the week (Monday) for weekly reports, * The first day of the month for monthly reports. Required in the `SELECT` clause. If a `WHERE` condition on `report_date` is not specified in the query, the latest available weekly or monthly report is returned.
  *   `reportGranularity` (*type:* `String.t`, *default:* `nil`) - Granularity of the report. The ranking can be done over a week or a month timeframe. Required in the `SELECT` clause. Condition on `report_granularity` is required in the `WHERE` clause.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the product cluster.
  *   `variantGtins` (*type:* `list(String.t)`, *default:* `nil`) - GTINs of example variants of the product cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :brand => String.t() | nil,
          :brandInventoryStatus => String.t() | nil,
          :categoryL1 => String.t() | nil,
          :categoryL2 => String.t() | nil,
          :categoryL3 => String.t() | nil,
          :categoryL4 => String.t() | nil,
          :categoryL5 => String.t() | nil,
          :inventoryStatus => String.t() | nil,
          :previousRank => String.t() | nil,
          :previousRelativeDemand => String.t() | nil,
          :rank => String.t() | nil,
          :relativeDemand => String.t() | nil,
          :relativeDemandChange => String.t() | nil,
          :reportCategoryId => String.t() | nil,
          :reportCountryCode => String.t() | nil,
          :reportDate => GoogleApi.MerchantAPI.Reports_v1beta.Model.Date.t() | nil,
          :reportGranularity => String.t() | nil,
          :title => String.t() | nil,
          :variantGtins => list(String.t()) | nil
        }

  field(:brand)
  field(:brandInventoryStatus)
  field(:categoryL1)
  field(:categoryL2)
  field(:categoryL3)
  field(:categoryL4)
  field(:categoryL5)
  field(:inventoryStatus)
  field(:previousRank)
  field(:previousRelativeDemand)
  field(:rank)
  field(:relativeDemand)
  field(:relativeDemandChange)
  field(:reportCategoryId)
  field(:reportCountryCode)
  field(:reportDate, as: GoogleApi.MerchantAPI.Reports_v1beta.Model.Date)
  field(:reportGranularity)
  field(:title)
  field(:variantGtins, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.MerchantAPI.Reports_v1beta.Model.BestSellersProductClusterView do
  def decode(value, options) do
    GoogleApi.MerchantAPI.Reports_v1beta.Model.BestSellersProductClusterView.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MerchantAPI.Reports_v1beta.Model.BestSellersProductClusterView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
