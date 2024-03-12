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

defmodule GoogleApi.ServiceNetworking.V1.Model.FieldPolicy do
  @moduledoc """
  Google API Policy Annotation This message defines a simple API policy annotation that can be used to annotate API request and response message fields with applicable policies. One field may have multiple applicable policies that must all be satisfied before a request can be processed. This policy annotation is used to generate the overall policy that will be used for automatic runtime policy enforcement and documentation generation.

  ## Attributes

  *   `resourcePermission` (*type:* `String.t`, *default:* `nil`) - Specifies the required permission(s) for the resource referred to by the field. It requires the field contains a valid resource reference, and the request must pass the permission checks to proceed. For example, "resourcemanager.projects.get".
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - Specifies the resource type for the resource referred to by the field.
  *   `selector` (*type:* `String.t`, *default:* `nil`) - Selects one or more request or response message fields to apply this `FieldPolicy`. When a `FieldPolicy` is used in proto annotation, the selector must be left as empty. The service config generator will automatically fill the correct value. When a `FieldPolicy` is used in service config, the selector must be a comma-separated string with valid request or response field paths, such as "foo.bar" or "foo.bar,foo.baz".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resourcePermission => String.t() | nil,
          :resourceType => String.t() | nil,
          :selector => String.t() | nil
        }

  field(:resourcePermission)
  field(:resourceType)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.FieldPolicy do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.FieldPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.FieldPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
