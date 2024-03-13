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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleAssistantAccessoryV1ScreenOutConfig do
  @moduledoc """
  Specifies the desired format for the server to use when it returns `screen_out` response.

  ## Attributes

  *   `dimensions` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleAssistantAccessoryV1ScreenOutConfigDimensions.t`, *default:* `nil`) - Device dimensions.
  *   `fontScaleFactor` (*type:* `number()`, *default:* `nil`) - The scale factor used to convert Scalable Pixel (SP) units to Density-independent Pixel (DP) units (DP = SP * scale factor). Fonts are measured in units of SP, and on some platforms such as Android the SP to DP scale factor can be affected by the font size a user selects in accessibility settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleAssistantAccessoryV1ScreenOutConfigDimensions.t()
            | nil,
          :fontScaleFactor => number() | nil
        }

  field(:dimensions,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleAssistantAccessoryV1ScreenOutConfigDimensions
  )

  field(:fontScaleFactor)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleAssistantAccessoryV1ScreenOutConfig do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleAssistantAccessoryV1ScreenOutConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleAssistantAccessoryV1ScreenOutConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end