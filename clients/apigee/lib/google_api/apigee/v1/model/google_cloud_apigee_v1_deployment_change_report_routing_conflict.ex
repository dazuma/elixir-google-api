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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict do
  @moduledoc """
  Describes a routing conflict that may cause a deployment not to receive traffic at some base path.

  ## Attributes

  *   `conflictingDeployment` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment.t`, *default:* `nil`) - Existing base path/deployment causing the conflict.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Human-readable description of this conflict.
  *   `environmentGroup` (*type:* `String.t`, *default:* `nil`) - Name of the environment group in which this conflict exists.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conflictingDeployment =>
            GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment.t()
            | nil,
          :description => String.t() | nil,
          :environmentGroup => String.t() | nil
        }

  field(:conflictingDeployment,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment
  )

  field(:description)
  field(:environmentGroup)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
