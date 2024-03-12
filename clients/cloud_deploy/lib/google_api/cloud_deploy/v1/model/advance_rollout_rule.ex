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

defmodule GoogleApi.CloudDeploy.V1.Model.AdvanceRolloutRule do
  @moduledoc """
  The `AdvanceRollout` automation rule will automatically advance a successful Rollout to the next phase.

  ## Attributes

  *   `condition` (*type:* `GoogleApi.CloudDeploy.V1.Model.AutomationRuleCondition.t`, *default:* `nil`) - Output only. Information around the state of the Automation rule.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  *   `sourcePhases` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Proceeds only after phase name matched any one in the list. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  *   `wait` (*type:* `String.t`, *default:* `nil`) - Optional. How long to wait after a rollout is finished.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.CloudDeploy.V1.Model.AutomationRuleCondition.t() | nil,
          :id => String.t() | nil,
          :sourcePhases => list(String.t()) | nil,
          :wait => String.t() | nil
        }

  field(:condition, as: GoogleApi.CloudDeploy.V1.Model.AutomationRuleCondition)
  field(:id)
  field(:sourcePhases, type: :list)
  field(:wait)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.AdvanceRolloutRule do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.AdvanceRolloutRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.AdvanceRolloutRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
