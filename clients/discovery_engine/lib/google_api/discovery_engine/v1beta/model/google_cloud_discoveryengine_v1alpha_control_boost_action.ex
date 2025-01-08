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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostAction do
  @moduledoc """
  Adjusts order of products in returned list.

  ## Attributes

  *   `boost` (*type:* `number()`, *default:* `nil`) - Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Default is 0.0 (No-op).
  *   `dataStore` (*type:* `String.t`, *default:* `nil`) - Required. Specifies which data store's documents can be boosted by this control. Full data store name e.g. projects/123/locations/global/collections/default_collection/dataStores/default_data_store
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Required. Specifies which products to apply the boost to. If no filter is provided all products will be boosted (No-op). Syntax documentation: https://cloud.google.com/retail/docs/filter-and-order Maximum length is 5000 characters. Otherwise an INVALID ARGUMENT error is thrown.
  *   `fixedBoost` (*type:* `number()`, *default:* `nil`) - Optional. Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Default is 0.0 (No-op).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boost => number() | nil,
          :dataStore => String.t() | nil,
          :filter => String.t() | nil,
          :fixedBoost => number() | nil
        }

  field(:boost)
  field(:dataStore)
  field(:filter)
  field(:fixedBoost)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostAction do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostAction.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
