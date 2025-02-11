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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Index do
  @moduledoc """
  Cloud Firestore indexes enable simple and complex queries against documents in a database.

  ## Attributes

  *   `apiScope` (*type:* `String.t`, *default:* `nil`) - The API scope supported by this index.
  *   `density` (*type:* `String.t`, *default:* `nil`) - Immutable. The density configuration of the index.
  *   `fields` (*type:* `list(GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexField.t)`, *default:* `nil`) - The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  *   `multikey` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the index is multikey. By default, the index is not multikey. For non-multikey indexes, none of the paths in the index definition reach or traverse an array, except via an explicit array index. For multikey indexes, at most one of the paths in the index definition reach or traverse an array, except via an explicit array index. Violations will result in errors. Note this field only applies to index with IGNITE_API ApiScope.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. A server defined name for this index. The form of this name for composite indexes will be: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}` For single field indexes, this field will be empty.
  *   `queryScope` (*type:* `String.t`, *default:* `nil`) - Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection ID. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection ID as this index.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The serving state of the index.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiScope => String.t() | nil,
          :density => String.t() | nil,
          :fields =>
            list(GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexField.t()) | nil,
          :multikey => boolean() | nil,
          :name => String.t() | nil,
          :queryScope => String.t() | nil,
          :state => String.t() | nil
        }

  field(:apiScope)
  field(:density)
  field(:fields, as: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexField, type: :list)
  field(:multikey)
  field(:name)
  field(:queryScope)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Index do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Index.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Index do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
