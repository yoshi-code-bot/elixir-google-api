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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityNsrPQDataSubchunkData do
  @moduledoc """
  Data used to compute delta_subchunk_adjustment. (I.e, the subchunks looked up, with their confidences and weights). This data is not propagated to ascorer.

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - Confidence associated with the chunk.
  *   `deltaNsr` (*type:* `number()`, *default:* `nil`) - Subchunk delta in nsr.
  *   `pageWeight` (*type:* `number()`, *default:* `nil`) - Weight with which this document belong to this subchunk (greater than 0).
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of this chunk. Eg, ymyl_health, d2v, etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :deltaNsr => number() | nil,
          :pageWeight => number() | nil,
          :type => String.t() | nil
        }

  field(:confidence)
  field(:deltaNsr)
  field(:pageWeight)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityNsrPQDataSubchunkData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityNsrPQDataSubchunkData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityNsrPQDataSubchunkData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
