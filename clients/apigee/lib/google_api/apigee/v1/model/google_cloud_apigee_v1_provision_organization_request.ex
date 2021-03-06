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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ProvisionOrganizationRequest do
  @moduledoc """
  Request for ProvisionOrganization.

  ## Attributes

  *   `analyticsRegion` (*type:* `String.t`, *default:* `nil`) - Primary Cloud Platform region for analytics data storage. For valid values, see [Create an organization](https://cloud.google.com/apigee/docs/hybrid/latest/precog-provision). Defaults to `us-west1`.
  *   `authorizedNetwork` (*type:* `String.t`, *default:* `nil`) - Name of the customer project's VPC network. If provided, the network needs to be peered through Service Networking. If none is provided, the organization will have access only to the public internet.
  *   `runtimeLocation` (*type:* `String.t`, *default:* `nil`) - Cloud Platform location for the runtime instance. Defaults to `us-west1-a`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analyticsRegion => String.t() | nil,
          :authorizedNetwork => String.t() | nil,
          :runtimeLocation => String.t() | nil
        }

  field(:analyticsRegion)
  field(:authorizedNetwork)
  field(:runtimeLocation)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ProvisionOrganizationRequest do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ProvisionOrganizationRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ProvisionOrganizationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
