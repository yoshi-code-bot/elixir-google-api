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

defmodule GoogleApi.DisplayVideo.V3.Model.Site do
  @moduledoc """
  A single site. Sites are apps or websites belonging to a channel.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the site.
  *   `urlOrAppId` (*type:* `String.t`, *default:* `nil`) - Required. The app ID or URL of the site. Must be UTF-8 encoded with a maximum length of 240 bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :urlOrAppId => String.t() | nil
        }

  field(:name)
  field(:urlOrAppId)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.Site do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.Site.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.Site do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end