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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RemoveFromFolderAction do
  @moduledoc """
  Represents the action responsible for remove a document from a specific folder.

  ## Attributes

  *   `condition` (*type:* `String.t`, *default:* `nil`) - Condition of the action to be executed.
  *   `folder` (*type:* `String.t`, *default:* `nil`) - Name of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => String.t() | nil,
          :folder => String.t() | nil
        }

  field(:condition)
  field(:folder)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RemoveFromFolderAction do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RemoveFromFolderAction.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RemoveFromFolderAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
