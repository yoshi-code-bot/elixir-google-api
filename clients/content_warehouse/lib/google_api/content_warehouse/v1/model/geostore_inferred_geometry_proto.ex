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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreInferredGeometryProto do
  @moduledoc """
  Inferred geometry defines the geometry of a feature as the union or exclusion of the geometry of other features. For instance, the geometry of a timezone can be specified as the union of all the countries it applies to. In this scenario, the timezone will can be considered a "composite feature", while the countries are its "composing features". A composite feature must have a bidirectional reference between itself and all its composing features. A composite feature refers to its composing features via `geometry_composition`, while the composing features must refer back to the composing feature via `defines_geometry_for`. See: go/inferred-geometry and go/geo-schema:composite-geometry-editor for more details.

  ## Attributes

  *   `definesGeometryFor` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t)`, *default:* `nil`) - Features whose geometry depends on this feature's geometry.
  *   `geometryComposition` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreGeometryComposition.t`, *default:* `nil`) - Features whose geometry defines the geometry of this feature (i.e. "composing features").
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :definesGeometryFor =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t()) | nil,
          :geometryComposition =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreGeometryComposition.t() | nil
        }

  field(:definesGeometryFor,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto,
    type: :list
  )

  field(:geometryComposition, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreGeometryComposition)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreInferredGeometryProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreInferredGeometryProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreInferredGeometryProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end