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

defmodule GoogleApi.Domains.V1.Model.PrimaryBackupPolicy do
  @moduledoc """
  Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.

  ## Attributes

  *   `backupGeoTargets` (*type:* `GoogleApi.Domains.V1.Model.GeoPolicy.t`, *default:* `nil`) - Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to `BACKUP`, this policy essentially becomes a geo routing policy.
  *   `primaryTargets` (*type:* `GoogleApi.Domains.V1.Model.HealthCheckTargets.t`, *default:* `nil`) - Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the `backup_geo_targets`.
  *   `trickleTraffic` (*type:* `float()`, *default:* `nil`) - When serving state is `PRIMARY`, this field provides the option of sending a small percentage of the traffic to the backup targets.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupGeoTargets => GoogleApi.Domains.V1.Model.GeoPolicy.t() | nil,
          :primaryTargets => GoogleApi.Domains.V1.Model.HealthCheckTargets.t() | nil,
          :trickleTraffic => float() | nil
        }

  field(:backupGeoTargets, as: GoogleApi.Domains.V1.Model.GeoPolicy)
  field(:primaryTargets, as: GoogleApi.Domains.V1.Model.HealthCheckTargets)
  field(:trickleTraffic)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1.Model.PrimaryBackupPolicy do
  def decode(value, options) do
    GoogleApi.Domains.V1.Model.PrimaryBackupPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1.Model.PrimaryBackupPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
