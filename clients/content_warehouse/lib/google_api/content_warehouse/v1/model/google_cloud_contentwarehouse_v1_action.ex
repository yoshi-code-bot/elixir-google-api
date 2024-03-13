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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Action do
  @moduledoc """
  Represents the action triggered by Rule Engine when the rule is true.

  ## Attributes

  *   `accessControl` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1AccessControlAction.t`, *default:* `nil`) - Action triggering access control operations.
  *   `actionId` (*type:* `String.t`, *default:* `nil`) - ID of the action. Managed internally.
  *   `addToFolder` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1AddToFolderAction.t`, *default:* `nil`) - Action triggering create document link operation.
  *   `dataUpdate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DataUpdateAction.t`, *default:* `nil`) - Action triggering data update operations.
  *   `dataValidation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DataValidationAction.t`, *default:* `nil`) - Action triggering data validation operations.
  *   `deleteDocumentAction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DeleteDocumentAction.t`, *default:* `nil`) - Action deleting the document.
  *   `publishToPubSub` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1PublishAction.t`, *default:* `nil`) - Action publish to Pub/Sub operation.
  *   `removeFromFolderAction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RemoveFromFolderAction.t`, *default:* `nil`) - Action removing a document from a folder.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessControl =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1AccessControlAction.t()
            | nil,
          :actionId => String.t() | nil,
          :addToFolder =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1AddToFolderAction.t()
            | nil,
          :dataUpdate =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DataUpdateAction.t()
            | nil,
          :dataValidation =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DataValidationAction.t()
            | nil,
          :deleteDocumentAction =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DeleteDocumentAction.t()
            | nil,
          :publishToPubSub =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1PublishAction.t()
            | nil,
          :removeFromFolderAction =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RemoveFromFolderAction.t()
            | nil
        }

  field(:accessControl,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1AccessControlAction
  )

  field(:actionId)

  field(:addToFolder,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1AddToFolderAction
  )

  field(:dataUpdate,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DataUpdateAction
  )

  field(:dataValidation,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DataValidationAction
  )

  field(:deleteDocumentAction,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1DeleteDocumentAction
  )

  field(:publishToPubSub,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1PublishAction
  )

  field(:removeFromFolderAction,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RemoveFromFolderAction
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Action do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Action.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Action do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
