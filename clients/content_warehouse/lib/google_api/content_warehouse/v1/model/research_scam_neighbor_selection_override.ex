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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScamNeighborSelectionOverride do
  @moduledoc """
  Last used tag = 8

  ## Attributes

  *   `approxEpsilonDistance` (*type:* `number()`, *default:* `nil`) - The distance threshold to use for approximate search before exact reordering is performed, if exact reordering is performed. If this is not set and exact reordering is enabled, a reasonable default value will be chosen using a heuristic specified in ScamConfig.ExactReordering.NeighborSelectionOverrideHeuristics. This field is ignored if exact reordering is not enabled. This value must be non-NaN if set.
  *   `approxNumNeighbors` (*type:* `integer()`, *default:* `nil`) - The number of neighbors to find via approximate search before exact reordering is performed. If this is not set and exact reordering is enabled, a reasonable default value will be chosen using the heuristic specified in ScamConfig.ExactReordering.NeighborSelectionOverrideHeuristics. This field is ignored if exact reordering is not enabled. This value must be > 0 if set.
  *   `epsilonDistance` (*type:* `number()`, *default:* `nil`) - The maximum distance at which to return a neighbor. If this proto is used, at least one of this and num_neighbors must be set. The default is infinity, effectively returning num_neighbors neighbors regardless of distance. This value must be non-NaN if set.
  *   `numNeighbors` (*type:* `integer()`, *default:* `nil`) - The maximum number of neighbors to return. If this proto is used, at least one of this and epsilon_distance must be set. The default is the largest value representable as an int32, effectively returning all neighbors within epsilon_distance. This value must be > 0 if set.
  *   `numSingleShardNeighbors` (*type:* `integer()`, *default:* `nil`) - If populated, this is the maximum number of neighbors that may be returned from a single shard. If not populated, up to num_neighbors neighbors are returned from each shard. Setting this to a smaller value than num_neighbors will increase speed at the expense of accuray by requiring cross-shard merging of fewer neighbors. If this value is set, num_neighbors must also be set and this value must be <= num_neighbors and >= num_neighbors / number of shards. If set, this value must always be > 0. 
  *   `perCrowdingAttributeNumNeighbors` (*type:* `integer()`, *default:* `nil`) - The maximum number of neighbors to return for a single value of the crowding attribute. The crowding attribute is specified per-datapoint in the GenericFeatureVector proto, or the Document proto for sparse logistic models. Crowding is described more thoroughly in research/scam/utils/crowding_top_n.h. NOTES: Crowding is effectivley enabled if this value is less than num_neighbors.
  *   `perCrowdingAttributePreReorderingNumNeighbors` (*type:* `integer()`, *default:* `nil`) - The maximum number of neighbors to return from the approximate portion of the nearest-neighbor search algorithm, within each shard, for a single value of the crowding attribute, before performing exact reordering. Ignored if exact reordering is disabled for this dataset.
  *   `treeXHybridLeavesSearchedOverride` (*type:* `integer()`, *default:* `nil`) - Note: currently not implemented for all database shard subclasses! Contact ScaM before using. Overrides max_spill_centers for tree-X hybrid searchers configured with FIXED_NUMBER_OF_CENTERS spilling. The max_spill_centers in the ScaM config is used if this field isn't set. Only valid if: * Used on a tree-X hybrid ScaM config with FIXED_NUMBER_OF_CENTERS. * Value is greater than zero and at most equal to num_children.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :approxEpsilonDistance => number() | nil,
          :approxNumNeighbors => integer() | nil,
          :epsilonDistance => number() | nil,
          :numNeighbors => integer() | nil,
          :numSingleShardNeighbors => integer() | nil,
          :perCrowdingAttributeNumNeighbors => integer() | nil,
          :perCrowdingAttributePreReorderingNumNeighbors => integer() | nil,
          :treeXHybridLeavesSearchedOverride => integer() | nil
        }

  field(:approxEpsilonDistance)
  field(:approxNumNeighbors)
  field(:epsilonDistance)
  field(:numNeighbors)
  field(:numSingleShardNeighbors)
  field(:perCrowdingAttributeNumNeighbors)
  field(:perCrowdingAttributePreReorderingNumNeighbors)
  field(:treeXHybridLeavesSearchedOverride)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamNeighborSelectionOverride do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScamNeighborSelectionOverride.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScamNeighborSelectionOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end