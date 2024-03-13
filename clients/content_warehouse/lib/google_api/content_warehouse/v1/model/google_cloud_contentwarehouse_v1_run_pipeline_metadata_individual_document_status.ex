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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RunPipelineMetadataIndividualDocumentStatus do
  @moduledoc """
  The status of processing a document.

  ## Attributes

  *   `documentId` (*type:* `String.t`, *default:* `nil`) - Document identifier of an existing document.
  *   `status` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - The status processing the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentId => String.t() | nil,
          :status => GoogleApi.ContentWarehouse.V1.Model.GoogleRpcStatus.t() | nil
        }

  field(:documentId)
  field(:status, as: GoogleApi.ContentWarehouse.V1.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RunPipelineMetadataIndividualDocumentStatus do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RunPipelineMetadataIndividualDocumentStatus.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RunPipelineMetadataIndividualDocumentStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
