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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiScreenCapabilitiesResolution do
  @moduledoc """
  A Resolution proto indicates the size of the application window. All fields are required.

  ## Attributes

  *   `dpi` (*type:* `integer()`, *default:* `nil`) - Dots (pixels) per inch of the screen.
  *   `heightPx` (*type:* `integer()`, *default:* `nil`) - 
  *   `mSize` (*type:* `integer()`, *default:* `nil`) - m_size is the smallest square box size to display a capital letter M so that the user can still easily understand it.
  *   `nengSize` (*type:* `integer()`, *default:* `nil`) - neng_size is the smallest square box size to display a letter 螚 (Neng, U+879A) so that the user can easily understand it. (Neng is a visually dense Chinese letter, and so may require a larger box than an M.)
  *   `widthPx` (*type:* `integer()`, *default:* `nil`) - The dimensions of the application window, in pixels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dpi => integer() | nil,
          :heightPx => integer() | nil,
          :mSize => integer() | nil,
          :nengSize => integer() | nil,
          :widthPx => integer() | nil
        }

  field(:dpi)
  field(:heightPx)
  field(:mSize)
  field(:nengSize)
  field(:widthPx)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiScreenCapabilitiesResolution do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiScreenCapabilitiesResolution.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiScreenCapabilitiesResolution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end