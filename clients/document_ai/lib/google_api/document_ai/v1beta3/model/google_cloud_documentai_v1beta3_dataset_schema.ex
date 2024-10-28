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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DatasetSchema do
  @moduledoc """
  Dataset Schema.

  ## Attributes

  *   `documentSchema` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchema.t`, *default:* `nil`) - Optional. Schema of the dataset.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Dataset schema resource name. Format: `projects/{project}/locations/{location}/processors/{processor}/dataset/datasetSchema`
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentSchema =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchema.t()
            | nil,
          :name => String.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil
        }

  field(:documentSchema,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentSchema
  )

  field(:name)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DatasetSchema do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DatasetSchema.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DatasetSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
