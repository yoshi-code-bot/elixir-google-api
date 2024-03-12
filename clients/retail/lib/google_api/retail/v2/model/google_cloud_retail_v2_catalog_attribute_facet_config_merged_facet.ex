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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet do
  @moduledoc """
  The current facet key (i.e. attribute config) maps into the merged_facet_key. A facet key can have at most one child. The current facet key and the merged facet key need both to be textual custom attributes or both numerical custom attributes (same type).

  ## Attributes

  *   `mergedFacetKey` (*type:* `String.t`, *default:* `nil`) - The merged facet key should be a valid facet key that is different than the facet key of the current catalog attribute. We refer this is merged facet key as the child of the current catalog attribute. This merged facet key can't be a parent of another facet key (i.e. no directed path of length 2). This merged facet key needs to be either a textual custom attribute or a numerical custom attribute.
  *   `mergedFacetValues` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue.t)`, *default:* `nil`) - Each instance is a list of facet values that map into the same (possibly different) merged facet value. For the current attribute config, each facet value should map to at most one merged facet value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mergedFacetKey => String.t() | nil,
          :mergedFacetValues =>
            list(
              GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue.t()
            )
            | nil
        }

  field(:mergedFacetKey)

  field(:mergedFacetValues,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacetValue,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CatalogAttributeFacetConfigMergedFacet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end