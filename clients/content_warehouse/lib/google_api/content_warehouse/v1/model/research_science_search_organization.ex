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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization do
  @moduledoc """
  Organization, such as the source of a dataset or a funder NOTE: source_organization_mid and source_organization_mid_label should always have the same length: the mid and label correspond to each other. We don't use a map for consistency with Location and if we switch to map, we should switch to it in both. Next ID: 6

  ## Attributes

  *   `organizationMid` (*type:* `list(String.t)`, *default:* `nil`) - KG mid for the organization or person.
  *   `organizationMidLabel` (*type:* `list(String.t)`, *default:* `nil`) - Label (in the preferred language of the dataset) for the mid.
  *   `organizationName` (*type:* `String.t`, *default:* `nil`) - Unreconciled organization name. We store it here only if there are no organization_mid values present.
  *   `organizationUrl` (*type:* `String.t`, *default:* `nil`) - Original organization url
  *   `originalOrganizationName` (*type:* `String.t`, *default:* `nil`) - Original name before reconciliation; empty if not reconciled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :organizationMid => list(String.t()) | nil,
          :organizationMidLabel => list(String.t()) | nil,
          :organizationName => String.t() | nil,
          :organizationUrl => String.t() | nil,
          :originalOrganizationName => String.t() | nil
        }

  field(:organizationMid, type: :list)
  field(:organizationMidLabel, type: :list)
  field(:organizationName)
  field(:organizationUrl)
  field(:originalOrganizationName)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
