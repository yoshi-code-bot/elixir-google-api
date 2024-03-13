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

defmodule GoogleApi.Metastore.V1.Model.AlterTablePropertiesRequest do
  @moduledoc """
  Request message for DataprocMetastore.AlterTableProperties.

  ## Attributes

  *   `properties` (*type:* `map()`, *default:* `nil`) - A map that describes the desired values to mutate. If update_mask is empty, the properties will not update. Otherwise, the properties only alters the value whose associated paths exist in the update mask
  *   `tableName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the table containing the properties you're altering in the following format.databases/{database_id}/tables/{table_id}
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - A field mask that specifies the metadata table properties that are overwritten by the update. Fields specified in the update_mask are relative to the resource (not to the full request). A field is overwritten if it is in the mask.For example, given the target properties: properties { a: 1 b: 2 } And an update properties: properties { a: 2 b: 3 c: 4 } then if the field mask is:paths: "properties.b", "properties.c"then the result will be: properties { a: 1 b: 3 c: 4 } 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :properties => map() | nil,
          :tableName => String.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:properties, type: :map)
  field(:tableName)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.AlterTablePropertiesRequest do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.AlterTablePropertiesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.AlterTablePropertiesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end