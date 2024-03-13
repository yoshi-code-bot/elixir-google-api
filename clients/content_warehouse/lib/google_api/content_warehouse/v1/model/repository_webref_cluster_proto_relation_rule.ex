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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRule do
  @moduledoc """
  A rule that defines a Cluster based on a relation. Given a relation (a link type) R, then: For each entity B that has incoming links of type R This defines an instance of this rule, with argument=B We create a Set S We make B a child of S For each entity A that has a link R to B, we make A a child of S Next available tag: 6

  ## Attributes

  *   `relation` (*type:* `String.t`, *default:* `nil`) - The topic_property_name for the link that defines the relation, e.g. "/tv/tv_series_episode/series". Can start with a "!" to indicate that this link is reversed during extraction and we want the reversed case. Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :relation => String.t() | nil
        }

  field(:relation)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRule do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRule.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefClusterProtoRelationRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
