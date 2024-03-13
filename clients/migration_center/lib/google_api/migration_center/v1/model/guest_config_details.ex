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

defmodule GoogleApi.MigrationCenter.V1.Model.GuestConfigDetails do
  @moduledoc """
  Guest OS config information.

  ## Attributes

  *   `fstab` (*type:* `GoogleApi.MigrationCenter.V1.Model.FstabEntryList.t`, *default:* `nil`) - Mount list (Linux fstab).
  *   `hosts` (*type:* `GoogleApi.MigrationCenter.V1.Model.HostsEntryList.t`, *default:* `nil`) - Hosts file (/etc/hosts).
  *   `issue` (*type:* `String.t`, *default:* `nil`) - OS issue (typically /etc/issue in Linux).
  *   `nfsExports` (*type:* `GoogleApi.MigrationCenter.V1.Model.NfsExportList.t`, *default:* `nil`) - NFS exports.
  *   `selinuxMode` (*type:* `String.t`, *default:* `nil`) - Security-Enhanced Linux (SELinux) mode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fstab => GoogleApi.MigrationCenter.V1.Model.FstabEntryList.t() | nil,
          :hosts => GoogleApi.MigrationCenter.V1.Model.HostsEntryList.t() | nil,
          :issue => String.t() | nil,
          :nfsExports => GoogleApi.MigrationCenter.V1.Model.NfsExportList.t() | nil,
          :selinuxMode => String.t() | nil
        }

  field(:fstab, as: GoogleApi.MigrationCenter.V1.Model.FstabEntryList)
  field(:hosts, as: GoogleApi.MigrationCenter.V1.Model.HostsEntryList)
  field(:issue)
  field(:nfsExports, as: GoogleApi.MigrationCenter.V1.Model.NfsExportList)
  field(:selinuxMode)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.GuestConfigDetails do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.GuestConfigDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.GuestConfigDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
