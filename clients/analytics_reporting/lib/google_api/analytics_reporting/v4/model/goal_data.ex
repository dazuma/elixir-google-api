# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.GoalData do
  @moduledoc """
  Represents all the details pertaining to a goal.

  ## Attributes

  - goalCompletionLocation (String.t): URL of the page where this goal was completed. Defaults to `nil`.
  - goalCompletions (String.t): Total number of goal completions in this activity. Defaults to `nil`.
  - goalIndex (integer()): This identifies the goal as configured for the profile. Defaults to `nil`.
  - goalName (String.t): Name of the goal. Defaults to `nil`.
  - goalPreviousStep1 (String.t): URL of the page one step prior to the goal completion. Defaults to `nil`.
  - goalPreviousStep2 (String.t): URL of the page two steps prior to the goal completion. Defaults to `nil`.
  - goalPreviousStep3 (String.t): URL of the page three steps prior to the goal completion. Defaults to `nil`.
  - goalValue (float()): Value in this goal. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :goalCompletionLocation => String.t(),
          :goalCompletions => String.t(),
          :goalIndex => integer(),
          :goalName => String.t(),
          :goalPreviousStep1 => String.t(),
          :goalPreviousStep2 => String.t(),
          :goalPreviousStep3 => String.t(),
          :goalValue => float()
        }

  field(:goalCompletionLocation)
  field(:goalCompletions)
  field(:goalIndex)
  field(:goalName)
  field(:goalPreviousStep1)
  field(:goalPreviousStep2)
  field(:goalPreviousStep3)
  field(:goalValue)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.GoalData do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.GoalData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.GoalData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
