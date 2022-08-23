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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata do
  @moduledoc """
  The metadata proto of ResyncDataset method.

  ## Attributes

  *   `commonMetadata` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.t`, *default:* `nil`) - The basic metadata of the long running operation.
  *   `datasetResyncStatuses` (*type:* `list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus.t)`, *default:* `nil`) - The list of dataset resync statuses. Not checked when `dataset_documents` is specified in ResyncRequest.
  *   `individualDocumentResyncStatuses` (*type:* `list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus.t)`, *default:* `nil`) - The list of document resync statuses. The same document could have multiple `individual_document_resync_statuses` if it has multiple inconsistencies.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonMetadata =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.t()
            | nil,
          :datasetResyncStatuses =>
            list(
              GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus.t()
            )
            | nil,
          :individualDocumentResyncStatuses =>
            list(
              GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus.t()
            )
            | nil
        }

  field(:commonMetadata,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
  )

  field(:datasetResyncStatuses,
    as:
      GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus,
    type: :list
  )

  field(:individualDocumentResyncStatuses,
    as:
      GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
