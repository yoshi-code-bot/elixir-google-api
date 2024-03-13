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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreRouteAssociationProto do
  @moduledoc """
  This protocol buffer holds metadata about the association between a segment and a route.

  ## Attributes

  *   `displayPreference` (*type:* `String.t`, *default:* `nil`) - clang-format on
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t`, *default:* `nil`) - Field-level metadata for the route association.
  *   `route` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t`, *default:* `nil`) - Identifies the route feature to which this metadata applies. This is one of the routes the segment refers to via the SegmentProto.route field.
  *   `routeDirection` (*type:* `String.t`, *default:* `nil`) - The direction of the TYPE_ROUTE feature in this route association. A small number of countries (mostly just the United States, Mexico, and Canada) use directional routes. For example, in the United States highway US-1 is referred to as US-1 North or US-1 South on the sides where flow of traffic moves in those directions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayPreference => String.t() | nil,
          :metadata => GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto.t() | nil,
          :route => GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t() | nil,
          :routeDirection => String.t() | nil
        }

  field(:displayPreference)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFieldMetadataProto)
  field(:route, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto)
  field(:routeDirection)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRouteAssociationProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreRouteAssociationProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRouteAssociationProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end