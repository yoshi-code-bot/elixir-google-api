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

defmodule GoogleApi.Storage.V1.Model.Policy do
  @moduledoc """
  A bucket/object/managedFolder IAM policy.

  ## Attributes

  *   `bindings` (*type:* `list(GoogleApi.Storage.V1.Model.PolicyBindings.t)`, *default:* `nil`) - An association between a role, which comes with a set of permissions, and members who may assume that role.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - HTTP 1.1  Entity tag for the policy.
  *   `kind` (*type:* `String.t`, *default:* `storage#policy`) - The kind of item this is. For policies, this is always storage#policy. This field is ignored on input.
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - The ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, projects/_/buckets/bucket/objects/object for objects, and projects/_/buckets/bucket/managedFolders/managedFolder. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.
  *   `version` (*type:* `integer()`, *default:* `nil`) - The IAM policy format version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bindings => list(GoogleApi.Storage.V1.Model.PolicyBindings.t()) | nil,
          :etag => String.t() | nil,
          :kind => String.t() | nil,
          :resourceId => String.t() | nil,
          :version => integer() | nil
        }

  field(:bindings, as: GoogleApi.Storage.V1.Model.PolicyBindings, type: :list)
  field(:etag)
  field(:kind)
  field(:resourceId)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.Policy do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
