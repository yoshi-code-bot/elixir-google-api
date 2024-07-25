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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequest do
  @moduledoc """
  Request message for ConversationalSearchService.AnswerQuery method.

  ## Attributes

  *   `answerGenerationSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec.t`, *default:* `nil`) - Answer generation specification.
  *   `asynchronousMode` (*type:* `boolean()`, *default:* `nil`) - Asynchronous mode control. If enabled, the response will be returned with answer/session resource name without final answer. The API users need to do the polling to get the latest status of answer/session by calling ConversationalSearchService.GetAnswer or ConversationalSearchService.GetSession method.
  *   `query` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Query.t`, *default:* `nil`) - Required. Current user query.
  *   `queryUnderstandingSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec.t`, *default:* `nil`) - Query understanding specification.
  *   `relatedQuestionsSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec.t`, *default:* `nil`) - Related questions specification.
  *   `safetySpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec.t`, *default:* `nil`) - Model specification.
  *   `searchSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec.t`, *default:* `nil`) - Search specification.
  *   `session` (*type:* `String.t`, *default:* `nil`) - The session resource name. Not required. When session field is not set, the API is in sessionless mode. We support auto session mode: users can use the wildcard symbol `-` as session ID. A new ID will be automatically generated and assigned.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - The user labels applied to a resource must meet the following requirements: * Each resource can have multiple labels, up to a maximum of 64. * Each label must be a key-value pair. * Keys have a minimum length of 1 character and a maximum length of 63 characters and cannot be empty. Values can be empty and have a maximum length of 63 characters. * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed. * The key portion of a label must be unique. However, you can use the same key with multiple resources. * Keys must start with a lowercase letter or international character. See [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements) for more details.
  *   `userPseudoId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for tracking visitors. For example, this could be implemented with an HTTP cookie, which should be able to uniquely identify a visitor on a single device. This unique identifier should not change if the visitor logs in or out of the website. This field should NOT have a fixed value such as `unknown_visitor`. The field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answerGenerationSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec.t()
            | nil,
          :asynchronousMode => boolean() | nil,
          :query =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Query.t() | nil,
          :queryUnderstandingSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec.t()
            | nil,
          :relatedQuestionsSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec.t()
            | nil,
          :safetySpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec.t()
            | nil,
          :searchSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec.t()
            | nil,
          :session => String.t() | nil,
          :userLabels => map() | nil,
          :userPseudoId => String.t() | nil
        }

  field(:answerGenerationSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec
  )

  field(:asynchronousMode)
  field(:query, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Query)

  field(:queryUnderstandingSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec
  )

  field(:relatedQuestionsSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec
  )

  field(:safetySpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec
  )

  field(:searchSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec
  )

  field(:session)
  field(:userLabels, type: :map)
  field(:userPseudoId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerQueryRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
