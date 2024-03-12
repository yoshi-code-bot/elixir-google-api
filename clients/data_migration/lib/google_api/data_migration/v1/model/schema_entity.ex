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

defmodule GoogleApi.DataMigration.V1.Model.SchemaEntity do
  @moduledoc """
  Schema typically has no parent entity, but can have a parent entity DatabaseInstance (for database engines which support it). For some database engines, the terms schema and user can be used interchangeably when they refer to a namespace or a collection of other database entities. Can store additional information which is schema specific.

  ## Attributes

  *   `customFeatures` (*type:* `map()`, *default:* `nil`) - Custom engine specific features.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customFeatures => map() | nil
        }

  field(:customFeatures, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.SchemaEntity do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.SchemaEntity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.SchemaEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end