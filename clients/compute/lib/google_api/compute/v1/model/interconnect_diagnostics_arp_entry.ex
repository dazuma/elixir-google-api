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

defmodule GoogleApi.Compute.V1.Model.InterconnectDiagnosticsARPEntry do
  @moduledoc """
  Describing the ARP neighbor entries seen on this link

  ## Attributes

  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - The IP address of this ARP neighbor.
  *   `macAddress` (*type:* `String.t`, *default:* `nil`) - The MAC address of this ARP neighbor.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipAddress => String.t() | nil,
          :macAddress => String.t() | nil
        }

  field(:ipAddress)
  field(:macAddress)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectDiagnosticsARPEntry do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectDiagnosticsARPEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectDiagnosticsARPEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
