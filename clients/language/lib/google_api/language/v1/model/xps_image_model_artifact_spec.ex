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

defmodule GoogleApi.Language.V1.Model.XPSImageModelArtifactSpec do
  @moduledoc """
  Stores the locations and related metadata of the model artifacts. Populated for uCAIP requests only.

  ## Attributes

  *   `checkpointArtifact` (*type:* `GoogleApi.Language.V1.Model.XPSModelArtifactItem.t`, *default:* `nil`) - The Tensorflow checkpoint files. e.g. Used for resumable training.
  *   `exportArtifact` (*type:* `list(GoogleApi.Language.V1.Model.XPSModelArtifactItem.t)`, *default:* `nil`) - The model binary files in different formats for model export.
  *   `labelGcsUri` (*type:* `String.t`, *default:* `nil`) - Google Cloud Storage URI of decoded labels file for model export 'dict.txt'.
  *   `servingArtifact` (*type:* `GoogleApi.Language.V1.Model.XPSModelArtifactItem.t`, *default:* `nil`) - The default model binary file used for serving (e.g. online predict, batch predict) via public Cloud AI Platform API.
  *   `tfJsBinaryGcsPrefix` (*type:* `String.t`, *default:* `nil`) - Google Cloud Storage URI prefix of Tensorflow JavaScript binary files 'groupX-shardXofX.bin'. Deprecated.
  *   `tfLiteMetadataGcsUri` (*type:* `String.t`, *default:* `nil`) - Google Cloud Storage URI of Tensorflow Lite metadata 'tflite_metadata.json'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checkpointArtifact => GoogleApi.Language.V1.Model.XPSModelArtifactItem.t() | nil,
          :exportArtifact => list(GoogleApi.Language.V1.Model.XPSModelArtifactItem.t()) | nil,
          :labelGcsUri => String.t() | nil,
          :servingArtifact => GoogleApi.Language.V1.Model.XPSModelArtifactItem.t() | nil,
          :tfJsBinaryGcsPrefix => String.t() | nil,
          :tfLiteMetadataGcsUri => String.t() | nil
        }

  field(:checkpointArtifact, as: GoogleApi.Language.V1.Model.XPSModelArtifactItem)
  field(:exportArtifact, as: GoogleApi.Language.V1.Model.XPSModelArtifactItem, type: :list)
  field(:labelGcsUri)
  field(:servingArtifact, as: GoogleApi.Language.V1.Model.XPSModelArtifactItem)
  field(:tfJsBinaryGcsPrefix)
  field(:tfLiteMetadataGcsUri)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSImageModelArtifactSpec do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSImageModelArtifactSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSImageModelArtifactSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
