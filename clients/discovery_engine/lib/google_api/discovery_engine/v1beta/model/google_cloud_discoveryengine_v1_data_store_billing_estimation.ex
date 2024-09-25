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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DataStoreBillingEstimation do
  @moduledoc """
  Estimation of data size per data store.

  ## Attributes

  *   `structuredDataSize` (*type:* `String.t`, *default:* `nil`) - Data size for structured data in terms of bytes.
  *   `structuredDataUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Last updated timestamp for structured data.
  *   `unstructuredDataSize` (*type:* `String.t`, *default:* `nil`) - Data size for unstructured data in terms of bytes.
  *   `unstructuredDataUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Last updated timestamp for unstructured data.
  *   `websiteDataSize` (*type:* `String.t`, *default:* `nil`) - Data size for websites in terms of bytes.
  *   `websiteDataUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Last updated timestamp for websites.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :structuredDataSize => String.t() | nil,
          :structuredDataUpdateTime => DateTime.t() | nil,
          :unstructuredDataSize => String.t() | nil,
          :unstructuredDataUpdateTime => DateTime.t() | nil,
          :websiteDataSize => String.t() | nil,
          :websiteDataUpdateTime => DateTime.t() | nil
        }

  field(:structuredDataSize)
  field(:structuredDataUpdateTime, as: DateTime)
  field(:unstructuredDataSize)
  field(:unstructuredDataUpdateTime, as: DateTime)
  field(:websiteDataSize)
  field(:websiteDataUpdateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DataStoreBillingEstimation do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DataStoreBillingEstimation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1DataStoreBillingEstimation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
