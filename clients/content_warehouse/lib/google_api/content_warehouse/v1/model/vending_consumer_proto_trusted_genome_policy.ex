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

defmodule GoogleApi.ContentWarehouse.V1.Model.VendingConsumerProtoTrustedGenomePolicy do
  @moduledoc """
  Proto message containing policy related information.

  ## Attributes

  *   `localizedRegionOverride` (*type:* `String.t`, *default:* `nil`) - Override text for region for special treatment. Override will be used in special cases for example regions are too long to show in UI, the override will be "CA/NV/..." to cut it short. By keeping a region override string we'll have more flexibility to adjust what we show on UI. Optional.
  *   `policyType` (*type:* `list(String.t)`, *default:* `nil`) - Policy type. e.g. Government Endorsed, Apollo Required.
  *   `targetRegion` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VendingConsumerProtoTrustedGenomePolicyTargetRegion.t)`, *default:* `nil`) - Contains target region for the current policy. Optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :localizedRegionOverride => String.t() | nil,
          :policyType => list(String.t()) | nil,
          :targetRegion =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.VendingConsumerProtoTrustedGenomePolicyTargetRegion.t()
            )
            | nil
        }

  field(:localizedRegionOverride)
  field(:policyType, type: :list)

  field(:targetRegion,
    as: GoogleApi.ContentWarehouse.V1.Model.VendingConsumerProtoTrustedGenomePolicyTargetRegion,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VendingConsumerProtoTrustedGenomePolicy do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VendingConsumerProtoTrustedGenomePolicy.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VendingConsumerProtoTrustedGenomePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
