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

defmodule GoogleApi.STS.V1.Model.GoogleIdentityStsV1Options do
  @moduledoc """
  An `Options` object configures features that the Security Token Service supports, but that are not supported by standard OAuth 2.0 token exchange endpoints, as defined in https://tools.ietf.org/html/rfc8693.

  ## Attributes

  *   `accessBoundary` (*type:* `GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundary.t`, *default:* `nil`) - An access boundary that defines the upper bound of permissions the credential may have. The value should be a JSON object of AccessBoundary. The access boundary can include up to 10 rules. The size of the parameter value should not exceed 2048 characters.
  *   `userProject` (*type:* `String.t`, *default:* `nil`) - A Google project used for quota and billing purposes when the credential is used to access Google APIs. The provided project overrides the project bound to the credential. The value must be a project number or a project ID. Example: `my-sample-project-191923`. The maximum length is 32 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessBoundary => GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundary.t() | nil,
          :userProject => String.t() | nil
        }

  field(:accessBoundary, as: GoogleApi.STS.V1.Model.GoogleIdentityStsV1AccessBoundary)
  field(:userProject)
end

defimpl Poison.Decoder, for: GoogleApi.STS.V1.Model.GoogleIdentityStsV1Options do
  def decode(value, options) do
    GoogleApi.STS.V1.Model.GoogleIdentityStsV1Options.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.STS.V1.Model.GoogleIdentityStsV1Options do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
