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

defmodule GoogleApi.BeyondCorp.V1.Model.ClientGateway do
  @moduledoc """
  Message describing ClientGateway object.

  ## Attributes

  *   `clientConnectorService` (*type:* `String.t`, *default:* `nil`) - Output only. The client connector service name that the client gateway is associated to. Client Connector Services, named as follows: `projects/{project_id}/locations/{location_id}/client_connector_services/{client_connector_service_id}`.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. [Output only] Create time stamp.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. A unique identifier for the instance generated by the system.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. name of resource. The name is ignored during creation.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The operational state of the gateway.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. [Output only] Update time stamp.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientConnectorService => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :id => String.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:clientConnectorService)
  field(:createTime, as: DateTime)
  field(:id)
  field(:name)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BeyondCorp.V1.Model.ClientGateway do
  def decode(value, options) do
    GoogleApi.BeyondCorp.V1.Model.ClientGateway.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BeyondCorp.V1.Model.ClientGateway do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end