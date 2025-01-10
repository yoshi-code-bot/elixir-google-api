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

defmodule GoogleApi.Datastream.V1.Model.ServerAndClientVerification do
  @moduledoc """
  Message represents the option where Datastream will enforce the encryption and authenticate the server identity as well as the client identity. ca_certificate, client_certificate and client_key must be set if user selects this option.

  ## Attributes

  *   `caCertificate` (*type:* `String.t`, *default:* `nil`) - Required. Input only. PEM-encoded server root CA certificate.
  *   `clientCertificate` (*type:* `String.t`, *default:* `nil`) - Required. Input only. PEM-encoded certificate used by the source database to authenticate the client identity (i.e., the Datastream's identity). This certificate is signed by either a root certificate trusted by the server or one or more intermediate certificates (which is stored with the leaf certificate) to link the this certificate to the trusted root certificate.
  *   `clientKey` (*type:* `String.t`, *default:* `nil`) - Required. Input only. PEM-encoded private key associated with the client certificate. This value will be used during the SSL/TLS handshake, allowing the PostgreSQL server to authenticate the client's identity, i.e. identity of the Datastream.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caCertificate => String.t() | nil,
          :clientCertificate => String.t() | nil,
          :clientKey => String.t() | nil
        }

  field(:caCertificate)
  field(:clientCertificate)
  field(:clientKey)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.ServerAndClientVerification do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.ServerAndClientVerification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.ServerAndClientVerification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
