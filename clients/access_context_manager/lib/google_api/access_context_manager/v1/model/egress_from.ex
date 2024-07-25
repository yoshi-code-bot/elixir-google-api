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

defmodule GoogleApi.AccessContextManager.V1.Model.EgressFrom do
  @moduledoc """
  Defines the conditions under which an EgressPolicy matches a request. Conditions based on information about the source of the request. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.

  ## Attributes

  *   `identities` (*type:* `list(String.t)`, *default:* `nil`) - A list of identities that are allowed access through [EgressPolicy]. Identities can be an individual user, service account, Google group, or third-party identity. The `v1` identities that have the prefix `user`, `group`, `serviceAccount`, `principal`, and `principalSet` in https://cloud.google.com/iam/docs/principal-identifiers#v1 are supported.
  *   `identityType` (*type:* `String.t`, *default:* `nil`) - Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  *   `sourceRestriction` (*type:* `String.t`, *default:* `nil`) - Whether to enforce traffic restrictions based on `sources` field. If the `sources` fields is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  *   `sources` (*type:* `list(GoogleApi.AccessContextManager.V1.Model.EgressSource.t)`, *default:* `nil`) - Sources that this EgressPolicy authorizes access from. If this field is not empty, then `source_restriction` must be set to `SOURCE_RESTRICTION_ENABLED`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :identities => list(String.t()) | nil,
          :identityType => String.t() | nil,
          :sourceRestriction => String.t() | nil,
          :sources => list(GoogleApi.AccessContextManager.V1.Model.EgressSource.t()) | nil
        }

  field(:identities, type: :list)
  field(:identityType)
  field(:sourceRestriction)
  field(:sources, as: GoogleApi.AccessContextManager.V1.Model.EgressSource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.EgressFrom do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.EgressFrom.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.EgressFrom do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
