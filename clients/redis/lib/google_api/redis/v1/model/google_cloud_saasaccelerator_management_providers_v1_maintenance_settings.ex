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

defmodule GoogleApi.Redis.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings do
  @moduledoc """
  Maintenance settings associated with instance. Allows service producers and
  end users to assign settings that controls maintenance on this instance.

  ## Attributes

  *   `exclude` (*type:* `boolean()`, *default:* `nil`) - Optional. Exclude instance from maintenance. When true, rollout service will not
      attempt maintenance on the instance. Rollout service will include the
      instance in reported rollout progress as not attempted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exclude => boolean()
        }

  field(:exclude)
end

defimpl Poison.Decoder,
  for: GoogleApi.Redis.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Redis.V1.Model.GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
