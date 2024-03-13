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

defmodule GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard do
  @moduledoc """
  An answer card for a single person.

  ## Attributes

  *   `answer` (*type:* `list(GoogleApi.CloudSearch.V1.Model.SafeHtmlProto.t)`, *default:* `nil`) - List of answers.
  *   `answerText` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerAnswerList.t`, *default:* `nil`) - List of answers.
  *   `disambiguationInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo.t`, *default:* `nil`) - Disambiguation information.
  *   `header` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader.t`, *default:* `nil`) - The header to display for the card.
  *   `responseStatus` (*type:* `String.t`, *default:* `nil`) - The response status.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - Localized user friendly message to display to the user in the case of missing data or an error.
  *   `subject` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson.t`, *default:* `nil`) - The profile of the person that was the subject of the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answer => list(GoogleApi.CloudSearch.V1.Model.SafeHtmlProto.t()) | nil,
          :answerText =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerAnswerList.t() | nil,
          :disambiguationInfo =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo.t()
            | nil,
          :header =>
            GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader.t()
            | nil,
          :responseStatus => String.t() | nil,
          :statusMessage => String.t() | nil,
          :subject => GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson.t() | nil
        }

  field(:answer, as: GoogleApi.CloudSearch.V1.Model.SafeHtmlProto, type: :list)
  field(:answerText, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickAnswerAnswerList)

  field(:disambiguationInfo,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo
  )

  field(:header,
    as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader
  )

  field(:responseStatus)
  field(:statusMessage)
  field(:subject, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end