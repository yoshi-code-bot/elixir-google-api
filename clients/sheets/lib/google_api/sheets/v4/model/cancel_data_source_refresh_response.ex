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

defmodule GoogleApi.Sheets.V4.Model.CancelDataSourceRefreshResponse do
  @moduledoc """
  The response from cancelling one or multiple data source object refreshes.

  ## Attributes

  *   `statuses` (*type:* `list(GoogleApi.Sheets.V4.Model.CancelDataSourceRefreshStatus.t)`, *default:* `nil`) - The cancellation statuses of refreshes of all data source objects specified in the request. If is_all is specified, the field contains only those in failure status. Refreshing and canceling refresh the same data source object is also not allowed in the same `batchUpdate`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :statuses => list(GoogleApi.Sheets.V4.Model.CancelDataSourceRefreshStatus.t()) | nil
        }

  field(:statuses, as: GoogleApi.Sheets.V4.Model.CancelDataSourceRefreshStatus, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.CancelDataSourceRefreshResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.CancelDataSourceRefreshResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.CancelDataSourceRefreshResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
