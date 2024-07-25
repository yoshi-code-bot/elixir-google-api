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

defmodule GoogleApi.Firestore.V1.Model.FindNearest do
  @moduledoc """
  Nearest Neighbors search config. The ordering provided by FindNearest supersedes the order_by stage. If multiple documents have the same vector distance, the returned document order is not guaranteed to be stable between queries.

  ## Attributes

  *   `distanceMeasure` (*type:* `String.t`, *default:* `nil`) - Required. The distance measure to use, required.
  *   `limit` (*type:* `integer()`, *default:* `nil`) - Required. The number of nearest neighbors to return. Must be a positive integer of no more than 1000.
  *   `queryVector` (*type:* `GoogleApi.Firestore.V1.Model.Value.t`, *default:* `nil`) - Required. The query vector that we are searching on. Must be a vector of no more than 2048 dimensions.
  *   `vectorField` (*type:* `GoogleApi.Firestore.V1.Model.FieldReference.t`, *default:* `nil`) - Required. An indexed vector field to search upon. Only documents which contain vectors whose dimensionality match the query_vector can be returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :distanceMeasure => String.t() | nil,
          :limit => integer() | nil,
          :queryVector => GoogleApi.Firestore.V1.Model.Value.t() | nil,
          :vectorField => GoogleApi.Firestore.V1.Model.FieldReference.t() | nil
        }

  field(:distanceMeasure)
  field(:limit)
  field(:queryVector, as: GoogleApi.Firestore.V1.Model.Value)
  field(:vectorField, as: GoogleApi.Firestore.V1.Model.FieldReference)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.FindNearest do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.FindNearest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.FindNearest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
