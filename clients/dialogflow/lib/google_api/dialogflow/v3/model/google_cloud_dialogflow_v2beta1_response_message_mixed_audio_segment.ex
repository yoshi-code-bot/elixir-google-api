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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment do
  @moduledoc """
  Represents one segment of audio.

  ## Attributes

  *   `allowPlaybackInterruption` (*type:* `boolean()`, *default:* `nil`) - Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.
  *   `audio` (*type:* `String.t`, *default:* `nil`) - Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Client-specific URI that points to an audio clip accessible to the client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowPlaybackInterruption => boolean() | nil,
          :audio => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:allowPlaybackInterruption)
  field(:audio)
  field(:uri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ResponseMessageMixedAudioSegment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
