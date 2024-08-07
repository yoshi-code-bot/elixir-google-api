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

defmodule GoogleApi.BigtableAdmin.V2.Model.UpdateAuthorizedViewRequest do
  @moduledoc """
  The request for UpdateAuthorizedView.

  ## Attributes

  *   `authorizedView` (*type:* `GoogleApi.BigtableAdmin.V2.Model.AuthorizedView.t`, *default:* `nil`) - Required. The AuthorizedView to update. The `name` in `authorized_view` is used to identify the AuthorizedView. AuthorizedView name must in this format: `projects/{project}/instances/{instance}/tables/{table}/authorizedViews/{authorized_view}`.
  *   `ignoreWarnings` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, ignore the safety checks when updating the AuthorizedView.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Optional. The list of fields to update. A mask specifying which fields in the AuthorizedView resource should be updated. This mask is relative to the AuthorizedView resource, not to the request message. A field will be overwritten if it is in the mask. If empty, all fields set in the request will be overwritten. A special value `*` means to overwrite all fields (including fields not set in the request).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizedView => GoogleApi.BigtableAdmin.V2.Model.AuthorizedView.t() | nil,
          :ignoreWarnings => boolean() | nil,
          :updateMask => String.t() | nil
        }

  field(:authorizedView, as: GoogleApi.BigtableAdmin.V2.Model.AuthorizedView)
  field(:ignoreWarnings)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.UpdateAuthorizedViewRequest do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.UpdateAuthorizedViewRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.UpdateAuthorizedViewRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
