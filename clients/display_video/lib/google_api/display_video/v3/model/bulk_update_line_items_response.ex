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

defmodule GoogleApi.DisplayVideo.V3.Model.BulkUpdateLineItemsResponse do
  @moduledoc """
  Response message for LineItemService.BulkUpdateLineItems.

  ## Attributes

  *   `errors` (*type:* `list(GoogleApi.DisplayVideo.V3.Model.Status.t)`, *default:* `nil`) - Errors returned by line items that failed to update.
  *   `failedLineItemIds` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of line items that failed to update.
  *   `skippedLineItemIds` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of line items that are skipped for updates. For example, unnecessary mutates that will result in effectively no changes to line items will be skipped and corresponding line item IDs can be tracked here.
  *   `updatedLineItemIds` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of successfully updated line items.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => list(GoogleApi.DisplayVideo.V3.Model.Status.t()) | nil,
          :failedLineItemIds => list(String.t()) | nil,
          :skippedLineItemIds => list(String.t()) | nil,
          :updatedLineItemIds => list(String.t()) | nil
        }

  field(:errors, as: GoogleApi.DisplayVideo.V3.Model.Status, type: :list)
  field(:failedLineItemIds, type: :list)
  field(:skippedLineItemIds, type: :list)
  field(:updatedLineItemIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.BulkUpdateLineItemsResponse do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.BulkUpdateLineItemsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.BulkUpdateLineItemsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end