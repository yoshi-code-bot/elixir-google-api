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

defmodule GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequest do
  @moduledoc """
  Request proto for ClassifyContent RPC.

  ## Attributes

  *   `classifierVersion` (*type:* `String.t`, *default:* `nil`) - Optional. Version of the classifier to use. If not specified, the latest version will be used.
  *   `context` (*type:* `GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestContext.t`, *default:* `nil`) - Optional. Context about the input that will be used to help on the classification.
  *   `input` (*type:* `GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent.t`, *default:* `nil`) - Required. Content to be classified.
  *   `policies` (*type:* `list(GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig.t)`, *default:* `nil`) - Required. List of policies to classify against.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :classifierVersion => String.t() | nil,
          :context =>
            GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestContext.t()
            | nil,
          :input =>
            GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent.t()
            | nil,
          :policies =>
            list(
              GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig.t()
            )
            | nil
        }

  field(:classifierVersion)

  field(:context,
    as: GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestContext
  )

  field(:input,
    as:
      GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent
  )

  field(:policies,
    as:
      GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequest do
  def decode(value, options) do
    GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Checks.V1alpha.Model.GoogleChecksAisafetyV1alphaClassifyContentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
