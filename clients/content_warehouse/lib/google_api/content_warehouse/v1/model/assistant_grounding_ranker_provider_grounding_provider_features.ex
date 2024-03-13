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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerProviderGroundingProviderFeatures do
  @moduledoc """
  Features to be extracted from Provider GP for ranking in HGR. Next ID: 7

  ## Attributes

  *   `providerClusterIds` (*type:* `list(String.t)`, *default:* `nil`) - Cluster IDs for the provider. This field is repeated because some providers can be associated with multiple clusters. PRR specific feature.
  *   `providerId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantContextProviderId.t`, *default:* `nil`) - ProviderId for the provider in the binding set. PRR specific feature.
  *   `providerSignalResult` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingProviderProviderSignalResult.t`, *default:* `nil`) - Provider signals extracted from Provider GP.
  *   `pslScore` (*type:* `number()`, *default:* `nil`) - Provider quality score in the range [0,1] that can be used for ranking providers. Incorporates both policy rules and quality considerations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :providerClusterIds => list(String.t()) | nil,
          :providerId => GoogleApi.ContentWarehouse.V1.Model.AssistantContextProviderId.t() | nil,
          :providerSignalResult =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingProviderProviderSignalResult.t()
            | nil,
          :pslScore => number() | nil
        }

  field(:providerClusterIds, type: :list)
  field(:providerId, as: GoogleApi.ContentWarehouse.V1.Model.AssistantContextProviderId)

  field(:providerSignalResult,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingProviderProviderSignalResult
  )

  field(:pslScore)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerProviderGroundingProviderFeatures do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerProviderGroundingProviderFeatures.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerProviderGroundingProviderFeatures do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end