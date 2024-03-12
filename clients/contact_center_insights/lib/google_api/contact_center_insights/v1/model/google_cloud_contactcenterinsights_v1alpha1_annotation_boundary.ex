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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary do
  @moduledoc """
  A point in a conversation that marks the start or the end of an annotation.

  ## Attributes

  *   `transcriptIndex` (*type:* `integer()`, *default:* `nil`) - The index in the sequence of transcribed pieces of the conversation where the boundary is located. This index starts at zero.
  *   `wordIndex` (*type:* `integer()`, *default:* `nil`) - The word index of this boundary with respect to the first word in the transcript piece. This index starts at zero.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :transcriptIndex => integer() | nil,
          :wordIndex => integer() | nil
        }

  field(:transcriptIndex)
  field(:wordIndex)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end