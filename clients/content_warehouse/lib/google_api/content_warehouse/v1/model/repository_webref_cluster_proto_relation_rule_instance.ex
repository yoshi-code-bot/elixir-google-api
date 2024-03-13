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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRuleInstance do
  @moduledoc """
  An instance of a "relation" rule. Each "relation" rule defines a number of clusters, one for each entity B that that has incoming links of a certain type R; all entities with an outgoing link to B of type R are part of that cluster.

  ## Attributes

  *   `role` (*type:* `String.t`, *default:* `nil`) - 
  *   `rule` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRule.t`, *default:* `nil`) - The rule that this is an instance of. Required.
  *   `target` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityId.t`, *default:* `nil`) - The one entity that the links of type R point to. Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :role => String.t() | nil,
          :rule =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRule.t() | nil,
          :target => GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityId.t() | nil
        }

  field(:role)
  field(:rule, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRule)
  field(:target, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRuleInstance do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRuleInstance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRuleInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
