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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec do
  @moduledoc """
  Specification of the model.

  ## Attributes

  *   `version` (*type:* `String.t`, *default:* `nil`) - The model version used to generate the summary. Supported values are: * `stable`: string. Default value when no value is specified. Uses a generally available, fine-tuned model. For more information, see [Answer generation model versions and lifecycle](https://cloud.google.com/generative-ai-app-builder/docs/answer-generation-models). * `preview`: string. (Public preview) Uses a preview model. For more information, see [Answer generation model versions and lifecycle](https://cloud.google.com/generative-ai-app-builder/docs/answer-generation-models).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :version => String.t() | nil
        }

  field(:version)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
