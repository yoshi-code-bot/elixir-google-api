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

defmodule GoogleApi.Drive.V3.Model.RevisionList do
  @moduledoc """
  A list of revisions of a file.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `drive#revisionList`) - Identifies what kind of resource this is. Value: the fixed string "drive#revisionList".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The page token for the next page of revisions. This will be absent if the end of the revisions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.
  *   `revisions` (*type:* `list(GoogleApi.Drive.V3.Model.Revision.t)`, *default:* `nil`) - The list of revisions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :nextPageToken => String.t(),
          :revisions => list(GoogleApi.Drive.V3.Model.Revision.t())
        }

  field(:kind)
  field(:nextPageToken)
  field(:revisions, as: GoogleApi.Drive.V3.Model.Revision, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.RevisionList do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.RevisionList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.RevisionList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
