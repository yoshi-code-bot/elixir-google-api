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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExportEntityTypesRequest do
  @moduledoc """
  The request message for EntityTypes.ExportEntityTypes.

  ## Attributes

  *   `dataFormat` (*type:* `String.t`, *default:* `nil`) - Optional. The data format of the exported entity types. If not specified, `BLOB` is assumed.
  *   `entityTypes` (*type:* `list(String.t)`, *default:* `nil`) - Required. The name of the entity types to export. Format: `projects//locations//agents//entityTypes/`.
  *   `entityTypesContentInline` (*type:* `boolean()`, *default:* `nil`) - Optional. The option to return the serialized entity types inline.
  *   `entityTypesUri` (*type:* `String.t`, *default:* `nil`) - Optional. The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to export the entity types to. The format of this URI must be `gs:///`. Dialogflow performs a write operation for the Cloud Storage object on the caller's behalf, so your request authentication must have write permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. The language to retrieve the entity type for. The following fields are language dependent: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, all language dependent fields will be retrieved. [Many languages](https://cloud.google.com/dialogflow/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataFormat => String.t() | nil,
          :entityTypes => list(String.t()) | nil,
          :entityTypesContentInline => boolean() | nil,
          :entityTypesUri => String.t() | nil,
          :languageCode => String.t() | nil
        }

  field(:dataFormat)
  field(:entityTypes, type: :list)
  field(:entityTypesContentInline)
  field(:entityTypesUri)
  field(:languageCode)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExportEntityTypesRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExportEntityTypesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ExportEntityTypesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end