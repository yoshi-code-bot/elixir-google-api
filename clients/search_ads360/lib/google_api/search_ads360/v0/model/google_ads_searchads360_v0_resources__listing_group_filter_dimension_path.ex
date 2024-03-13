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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ListingGroupFilterDimensionPath do
  @moduledoc """
  The path defining of dimensions defining a listing group filter.

  ## Attributes

  *   `dimensions` (*type:* `list(GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension.t)`, *default:* `nil`) - Output only. The complete path of dimensions through the listing group filter hierarchy (excluding the root node) to this listing group filter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions =>
            list(
              GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension.t()
            )
            | nil
        }

  field(:dimensions,
    as:
      GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ListingGroupFilterDimensionPath do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ListingGroupFilterDimensionPath.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_ListingGroupFilterDimensionPath do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end