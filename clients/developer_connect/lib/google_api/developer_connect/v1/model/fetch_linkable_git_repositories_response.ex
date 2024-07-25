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

defmodule GoogleApi.DeveloperConnect.V1.Model.FetchLinkableGitRepositoriesResponse do
  @moduledoc """
  Response message for FetchLinkableGitRepositories.

  ## Attributes

  *   `linkableGitRepositories` (*type:* `list(GoogleApi.DeveloperConnect.V1.Model.LinkableGitRepository.t)`, *default:* `nil`) - The git repositories that can be linked to the connection.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token identifying a page of results the server should return.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :linkableGitRepositories =>
            list(GoogleApi.DeveloperConnect.V1.Model.LinkableGitRepository.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:linkableGitRepositories,
    as: GoogleApi.DeveloperConnect.V1.Model.LinkableGitRepository,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.DeveloperConnect.V1.Model.FetchLinkableGitRepositoriesResponse do
  def decode(value, options) do
    GoogleApi.DeveloperConnect.V1.Model.FetchLinkableGitRepositoriesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DeveloperConnect.V1.Model.FetchLinkableGitRepositoriesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
