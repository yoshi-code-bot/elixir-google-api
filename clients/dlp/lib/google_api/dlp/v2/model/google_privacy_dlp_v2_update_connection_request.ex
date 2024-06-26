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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2UpdateConnectionRequest do
  @moduledoc """
  Request message for UpdateConnection.

  ## Attributes

  *   `connection` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Connection.t`, *default:* `nil`) - Required. The connection with new values for the relevant fields.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Optional. Mask to control which fields get updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connection => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Connection.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:connection, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Connection)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2UpdateConnectionRequest do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2UpdateConnectionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2UpdateConnectionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
