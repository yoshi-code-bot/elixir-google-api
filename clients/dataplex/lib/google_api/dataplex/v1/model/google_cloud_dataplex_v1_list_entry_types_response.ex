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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ListEntryTypesResponse do
  @moduledoc """
  List EntryTypes response

  ## Attributes

  *   `entryTypes` (*type:* `list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntryType.t)`, *default:* `nil`) - ListEntryTypes under the given parent location.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more results in the list.
  *   `unreachableLocations` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entryTypes =>
            list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntryType.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachableLocations => list(String.t()) | nil
        }

  field(:entryTypes, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntryType, type: :list)
  field(:nextPageToken)
  field(:unreachableLocations, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ListEntryTypesResponse do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ListEntryTypesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ListEntryTypesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end