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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpec do
  @moduledoc """
  Settings to manage the metadata discovery and publishing in a zone.

  ## Attributes

  *   `csvOptions` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions.t`, *default:* `nil`) - Optional. Configuration for CSV data.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Required. Whether discovery is enabled.
  *   `excludePatterns` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  *   `includePatterns` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  *   `jsonOptions` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions.t`, *default:* `nil`) - Optional. Configuration for Json data.
  *   `schedule` (*type:* `String.t`, *default:* `nil`) - Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes.To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :csvOptions =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions.t() | nil,
          :enabled => boolean() | nil,
          :excludePatterns => list(String.t()) | nil,
          :includePatterns => list(String.t()) | nil,
          :jsonOptions =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions.t()
            | nil,
          :schedule => String.t() | nil
        }

  field(:csvOptions,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
  )

  field(:enabled)
  field(:excludePatterns, type: :list)
  field(:includePatterns, type: :list)

  field(:jsonOptions,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
  )

  field(:schedule)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpec do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
