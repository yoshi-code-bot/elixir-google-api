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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryStartingLocation do
  @moduledoc """
  The location to begin a discovery scan. Denotes an organization ID or folder ID within an organization.

  ## Attributes

  *   `folderId` (*type:* `String.t`, *default:* `nil`) - The ID of the Folder within an organization to scan.
  *   `organizationId` (*type:* `String.t`, *default:* `nil`) - The ID of an organization to scan.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :folderId => String.t() | nil,
          :organizationId => String.t() | nil
        }

  field(:folderId)
  field(:organizationId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryStartingLocation do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryStartingLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryStartingLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
