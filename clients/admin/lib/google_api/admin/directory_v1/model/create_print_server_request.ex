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

defmodule GoogleApi.Admin.Directory_v1.Model.CreatePrintServerRequest do
  @moduledoc """
  Request for adding a new print server.

  ## Attributes

  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The [unique ID](https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/{id}`
  *   `printServer` (*type:* `GoogleApi.Admin.Directory_v1.Model.PrintServer.t`, *default:* `nil`) - Required. A print server to create. If you want to place the print server under a specific organizational unit (OU), then populate the `org_unit_id`. Otherwise the print server is created under the root OU. The `org_unit_id` can be retrieved using the [Directory API](https://developers.google.com/admin-sdk/directory/v1/guides/manage-org-units).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parent => String.t() | nil,
          :printServer => GoogleApi.Admin.Directory_v1.Model.PrintServer.t() | nil
        }

  field(:parent)
  field(:printServer, as: GoogleApi.Admin.Directory_v1.Model.PrintServer)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.CreatePrintServerRequest do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.CreatePrintServerRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.CreatePrintServerRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
