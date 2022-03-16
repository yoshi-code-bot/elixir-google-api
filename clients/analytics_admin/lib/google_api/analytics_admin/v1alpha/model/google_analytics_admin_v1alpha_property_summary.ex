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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPropertySummary do
  @moduledoc """
  A virtual resource representing metadata for a GA4 property.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name for the property referred to in this property summary.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Resource name of this property's logical parent. Note: The Property-Moving UI can be used to change the parent. Format: accounts/{account}, properties/{property} Example: "accounts/100", "properties/200"
  *   `property` (*type:* `String.t`, *default:* `nil`) - Resource name of property referred to by this property summary Format: properties/{property_id} Example: "properties/1000"
  *   `propertyType` (*type:* `String.t`, *default:* `nil`) - The property's property type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :parent => String.t() | nil,
          :property => String.t() | nil,
          :propertyType => String.t() | nil
        }

  field(:displayName)
  field(:parent)
  field(:property)
  field(:propertyType)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPropertySummary do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPropertySummary.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaPropertySummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
