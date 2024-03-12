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

defmodule GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ArtifactObjects do
  @moduledoc """
  Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.

  ## Attributes

  *   `location` (*type:* `String.t`, *default:* `nil`) - Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/". (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.
  *   `paths` (*type:* `list(String.t)`, *default:* `nil`) - Path globs used to match files in the build's workspace.
  *   `timing` (*type:* `GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1TimeSpan.t`, *default:* `nil`) - Output only. Stores timing information for pushing all artifact objects.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :location => String.t() | nil,
          :paths => list(String.t()) | nil,
          :timing => GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1TimeSpan.t() | nil
        }

  field(:location)
  field(:paths, type: :list)
  field(:timing, as: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1TimeSpan)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ArtifactObjects do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ArtifactObjects.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ArtifactObjects do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end