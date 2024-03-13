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

defmodule GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonAttributesPersonVisibilityScoresPersonVisibilityPrediction do
  @moduledoc """


  ## Attributes

  *   `discretizedIconicPersonVisibilityConfidence` (*type:* `integer()`, *default:* `nil`) - Confidence score of the visibility type prediction discretized into range [0, 100].
  *   `iconicPersonVisibilityType` (*type:* `String.t`, *default:* `nil`) - Classification of how much of the body of the most iconic person in the image is visible.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :discretizedIconicPersonVisibilityConfidence => integer() | nil,
          :iconicPersonVisibilityType => String.t() | nil
        }

  field(:discretizedIconicPersonVisibilityConfidence)
  field(:iconicPersonVisibilityType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonAttributesPersonVisibilityScoresPersonVisibilityPrediction do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonAttributesPersonVisibilityScoresPersonVisibilityPrediction.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonAttributesPersonVisibilityScoresPersonVisibilityPrediction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
