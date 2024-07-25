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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource do
  @moduledoc """
  Location of the source in any accessible Git repository.

  ## Attributes

  *   `dir` (*type:* `String.t`, *default:* `nil`) - Optional. Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - Optional. The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref. Cloud Build uses `git fetch` to fetch the revision from the Git repository; therefore make sure that the string you provide for `revision` is parsable by the command. For information on string values accepted by `git fetch`, see https://git-scm.com/docs/gitrevisions#_specifying_revisions. For information on `git fetch`, see https://git-scm.com/docs/git-fetch.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Required. Location of the Git repo to build. This will be used as a `git remote`, see https://git-scm.com/docs/git-remote.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dir => String.t() | nil,
          :revision => String.t() | nil,
          :url => String.t() | nil
        }

  field(:dir)
  field(:revision)
  field(:url)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
