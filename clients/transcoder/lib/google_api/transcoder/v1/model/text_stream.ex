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

defmodule GoogleApi.Transcoder.V1.Model.TextStream do
  @moduledoc """
  Encoding of a text stream. For example, closed captions or subtitles.

  ## Attributes

  *   `codec` (*type:* `String.t`, *default:* `nil`) - The codec for this text stream. The default is `webvtt`. Supported text codecs: - `srt` - `ttml` - `cea608` - `cea708` - `webvtt`
  *   `mapping` (*type:* `list(GoogleApi.Transcoder.V1.Model.TextMapping.t)`, *default:* `nil`) - The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :codec => String.t() | nil,
          :mapping => list(GoogleApi.Transcoder.V1.Model.TextMapping.t()) | nil
        }

  field(:codec)
  field(:mapping, as: GoogleApi.Transcoder.V1.Model.TextMapping, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.TextStream do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.TextStream.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.TextStream do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
