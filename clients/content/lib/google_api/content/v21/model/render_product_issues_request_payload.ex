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

defmodule GoogleApi.Content.V21.Model.RenderProductIssuesRequestPayload do
  @moduledoc """
  The payload for configuring how the content should be rendered.

  ## Attributes

  *   `contentOption` (*type:* `String.t`, *default:* `nil`) - Optional. How the detailed content should be returned. Default option is to return the content as a pre-rendered HTML text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentOption => String.t() | nil
        }

  field(:contentOption)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RenderProductIssuesRequestPayload do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RenderProductIssuesRequestPayload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RenderProductIssuesRequestPayload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end