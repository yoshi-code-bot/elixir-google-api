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

defmodule GoogleApi.APIM.V1alpha.Model.HttpOperation do
  @moduledoc """
  An HTTP-based API Operation, sometimes called a "REST" Operation.

  ## Attributes

  *   `method` (*type:* `String.t`, *default:* `nil`) - HTTP Method.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Path of the HTTP request.
  *   `pathParams` (*type:* `list(GoogleApi.APIM.V1alpha.Model.HttpOperationPathParam.t)`, *default:* `nil`) - Path params of HttpOperation
  *   `queryParams` (*type:* `%{optional(String.t) => GoogleApi.APIM.V1alpha.Model.HttpOperationQueryParam.t}`, *default:* `nil`) - Query params of HttpOperation
  *   `request` (*type:* `GoogleApi.APIM.V1alpha.Model.HttpOperationHttpRequest.t`, *default:* `nil`) - Request metadata.
  *   `response` (*type:* `GoogleApi.APIM.V1alpha.Model.HttpOperationHttpResponse.t`, *default:* `nil`) - Response metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :method => String.t() | nil,
          :path => String.t() | nil,
          :pathParams => list(GoogleApi.APIM.V1alpha.Model.HttpOperationPathParam.t()) | nil,
          :queryParams =>
            %{optional(String.t()) => GoogleApi.APIM.V1alpha.Model.HttpOperationQueryParam.t()}
            | nil,
          :request => GoogleApi.APIM.V1alpha.Model.HttpOperationHttpRequest.t() | nil,
          :response => GoogleApi.APIM.V1alpha.Model.HttpOperationHttpResponse.t() | nil
        }

  field(:method)
  field(:path)
  field(:pathParams, as: GoogleApi.APIM.V1alpha.Model.HttpOperationPathParam, type: :list)
  field(:queryParams, as: GoogleApi.APIM.V1alpha.Model.HttpOperationQueryParam, type: :map)
  field(:request, as: GoogleApi.APIM.V1alpha.Model.HttpOperationHttpRequest)
  field(:response, as: GoogleApi.APIM.V1alpha.Model.HttpOperationHttpResponse)
end

defimpl Poison.Decoder, for: GoogleApi.APIM.V1alpha.Model.HttpOperation do
  def decode(value, options) do
    GoogleApi.APIM.V1alpha.Model.HttpOperation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.APIM.V1alpha.Model.HttpOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
