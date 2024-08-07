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

defmodule GoogleApi.Firestore.V1beta1.Model.Value do
  @moduledoc """
  A message that can hold any of the supported value types.

  ## Attributes

  *   `arrayValue` (*type:* `GoogleApi.Firestore.V1beta1.Model.ArrayValue.t`, *default:* `nil`) - An array value. Cannot directly contain another array value, though can contain a map which contains another array.
  *   `booleanValue` (*type:* `boolean()`, *default:* `nil`) - A boolean value.
  *   `bytesValue` (*type:* `String.t`, *default:* `nil`) - A bytes value. Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes are considered by queries.
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - A double value.
  *   `geoPointValue` (*type:* `GoogleApi.Firestore.V1beta1.Model.LatLng.t`, *default:* `nil`) - A geo point value representing a point on the surface of Earth.
  *   `integerValue` (*type:* `String.t`, *default:* `nil`) - An integer value.
  *   `mapValue` (*type:* `GoogleApi.Firestore.V1beta1.Model.MapValue.t`, *default:* `nil`) - A map value.
  *   `nullValue` (*type:* `String.t`, *default:* `nil`) - A null value.
  *   `referenceValue` (*type:* `String.t`, *default:* `nil`) - A reference to a document. For example: `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - A string value. The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes of the UTF-8 representation are considered by queries.
  *   `timestampValue` (*type:* `DateTime.t`, *default:* `nil`) - A timestamp value. Precise only to microseconds. When stored, any additional precision is rounded down.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayValue => GoogleApi.Firestore.V1beta1.Model.ArrayValue.t() | nil,
          :booleanValue => boolean() | nil,
          :bytesValue => String.t() | nil,
          :doubleValue => float() | nil,
          :geoPointValue => GoogleApi.Firestore.V1beta1.Model.LatLng.t() | nil,
          :integerValue => String.t() | nil,
          :mapValue => GoogleApi.Firestore.V1beta1.Model.MapValue.t() | nil,
          :nullValue => String.t() | nil,
          :referenceValue => String.t() | nil,
          :stringValue => String.t() | nil,
          :timestampValue => DateTime.t() | nil
        }

  field(:arrayValue, as: GoogleApi.Firestore.V1beta1.Model.ArrayValue)
  field(:booleanValue)
  field(:bytesValue)
  field(:doubleValue)
  field(:geoPointValue, as: GoogleApi.Firestore.V1beta1.Model.LatLng)
  field(:integerValue)
  field(:mapValue, as: GoogleApi.Firestore.V1beta1.Model.MapValue)
  field(:nullValue)
  field(:referenceValue)
  field(:stringValue)
  field(:timestampValue, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.Value do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.Value.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.Value do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
