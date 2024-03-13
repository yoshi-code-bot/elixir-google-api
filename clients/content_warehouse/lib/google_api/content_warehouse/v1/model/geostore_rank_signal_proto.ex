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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreRankSignalProto do
  @moduledoc """
  This message is embedded in the RankDetailsProto (below). It represents one rank signal, which is a floating point value estimating the Oyster Rank of the feature.

  ## Attributes

  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t`, *default:* `nil`) - Field-level metadata for this signal.
  *   `rank` (*type:* `number()`, *default:* `nil`) - A value in the range [0, 1] estimating Oyster Rank according to this signal. Non-provider specific signals (e.g. SIGNAL_POPULATION) are interpreted by some common code in the ranking pipeline. Because of that, data providers should leave this field empty when setting such signals (so that the rank assignment can be uniform across all features regardless of contributing data providers). On the other hand, provider-specific signals (e.g. SIGNAL_ZENRIN_CITY_CATEGORY) are required to specify the rank field (it is not optional for them). That is because no code other than that of the provider itself will be able to fill in a meaningful value later on. We don't want clients to be reading from the raw_scalar / raw_string fields to interpret the data.
  *   `rawScalar` (*type:* `number()`, *default:* `nil`) - The raw scalar value that was used to compute 'rank' above. The meaning of this attribute changes depending on the signal type.
  *   `rawString` (*type:* `String.t`, *default:* `nil`) - The raw string value that was used to compute 'rank' above. The meaning of this attribute changes depending on the signal type.
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata => GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t() | nil,
          :rank => number() | nil,
          :rawScalar => number() | nil,
          :rawString => String.t() | nil,
          :type => String.t() | nil
        }

  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto)
  field(:rank)
  field(:rawScalar)
  field(:rawString)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRankSignalProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreRankSignalProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRankSignalProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
