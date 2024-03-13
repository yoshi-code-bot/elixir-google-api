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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomerAssetSet do
  @moduledoc """
  CustomerAssetSet is the linkage between a customer and an asset set. Adding a CustomerAssetSet links an asset set with a customer.

  ## Attributes

  *   `assetSet` (*type:* `String.t`, *default:* `nil`) - Immutable. The asset set which is linked to the customer.
  *   `customer` (*type:* `String.t`, *default:* `nil`) - Immutable. The customer to which this asset set is linked.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the customer asset set. Asset set asset resource names have the form: `customers/{customer_id}/customerAssetSets/{asset_set_id}`
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. The status of the customer asset set asset. Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetSet => String.t() | nil,
          :customer => String.t() | nil,
          :resourceName => String.t() | nil,
          :status => String.t() | nil
        }

  field(:assetSet)
  field(:customer)
  field(:resourceName)
  field(:status)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomerAssetSet do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomerAssetSet.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomerAssetSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end