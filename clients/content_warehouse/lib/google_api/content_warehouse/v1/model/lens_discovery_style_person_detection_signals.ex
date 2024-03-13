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

defmodule GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignals do
  @moduledoc """
  This message holds bounding boxes of detected people in the image. Next ID: 3

  ## Attributes

  *   `detectedPersons` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignalsDetectedPerson.t)`, *default:* `nil`) - Information of all detected people in the image, sorted by decreasing size of the bounding box. We store a maximum of 10 detected people.
  *   `version` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectedPersons =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignalsDetectedPerson.t()
            )
            | nil,
          :version => String.t() | nil
        }

  field(:detectedPersons,
    as:
      GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignalsDetectedPerson,
    type: :list
  )

  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.LensDiscoveryStylePersonDetectionSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
