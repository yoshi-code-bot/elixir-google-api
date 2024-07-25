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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource do
  @moduledoc """
  Location of the source in an archive file in Cloud Storage.

  ## Attributes

  *   `bucket` (*type:* `String.t`, *default:* `nil`) - Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  *   `generation` (*type:* `String.t`, *default:* `nil`) - Optional. Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  *   `object` (*type:* `String.t`, *default:* `nil`) - Required. Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.
  *   `sourceFetcher` (*type:* `String.t`, *default:* `nil`) - Optional. Option to specify the tool to fetch the source file for the build.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucket => String.t() | nil,
          :generation => String.t() | nil,
          :object => String.t() | nil,
          :sourceFetcher => String.t() | nil
        }

  field(:bucket)
  field(:generation)
  field(:object)
  field(:sourceFetcher)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContainerAnalysis.V1alpha1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
