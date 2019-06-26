# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Logging.V2.Model.ListLogEntriesRequest do
  @moduledoc """
  The parameters to ListLogEntries.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. A filter that chooses which log entries to return. See Advanced Logs Filters. Only log entries that match the filter are returned. An empty filter matches all log entries in the resources listed in resource_names. Referencing a parent resource that is not listed in resource_names will cause the filter to return no results. The maximum length of the filter is 20000 characters.
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - Optional. How the results should be sorted. Presently, the only permitted values are "timestamp asc" (default) and "timestamp desc". The first option returns entries in order of increasing values of LogEntry.timestamp (oldest first), and the second option returns entries in order of decreasing timestamps (newest first). Entries with equal timestamps are returned in order of their insert_id values.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of next_page_token in the response indicates that more results might be available.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. If present, then retrieve the next batch of results from the preceding call to this method. page_token must be the value of next_page_token from the previous response. The values of other method parameters should be identical to those in the previous call.
  *   `projectIds` (*type:* `list(String.t)`, *default:* `nil`) - Deprecated. Use resource_names instead. One or more project identifiers or project numbers from which to retrieve log entries. Example: "my-project-1A".
  *   `resourceNames` (*type:* `list(String.t)`, *default:* `nil`) - Required. Names of one or more parent resources from which to retrieve log entries:
      "projects/[PROJECT_ID]"
      "organizations/[ORGANIZATION_ID]"
      "billingAccounts/[BILLING_ACCOUNT_ID]"
      "folders/[FOLDER_ID]"
      Projects listed in the project_ids field are added to this list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t(),
          :orderBy => String.t(),
          :pageSize => integer(),
          :pageToken => String.t(),
          :projectIds => list(String.t()),
          :resourceNames => list(String.t())
        }

  field(:filter)
  field(:orderBy)
  field(:pageSize)
  field(:pageToken)
  field(:projectIds, type: :list)
  field(:resourceNames, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.ListLogEntriesRequest do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.ListLogEntriesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.ListLogEntriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
