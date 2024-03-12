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

defmodule GoogleApi.CloudDeploy.V1.Model.PromoteReleaseOperation do
  @moduledoc """
  Contains the information of an automated promote-release operation.

  ## Attributes

  *   `phase` (*type:* `String.t`, *default:* `nil`) - Output only. The starting phase of the rollout created by this operation.
  *   `rollout` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the rollout that initiates the `AutomationRun`.
  *   `targetId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the target that represents the promotion stage to which the release will be promoted. The value of this field is the last segment of a target name.
  *   `wait` (*type:* `String.t`, *default:* `nil`) - Output only. How long the operation will be paused.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :phase => String.t() | nil,
          :rollout => String.t() | nil,
          :targetId => String.t() | nil,
          :wait => String.t() | nil
        }

  field(:phase)
  field(:rollout)
  field(:targetId)
  field(:wait)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.PromoteReleaseOperation do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.PromoteReleaseOperation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.PromoteReleaseOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
