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

defmodule GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration do
  @moduledoc """
  This is a JSON template for an achievement configuration resource.

  ## Attributes

  - achievementType (String.t): The type of the achievement.
  Possible values are:  
  - "STANDARD" - Achievement is either locked or unlocked. 
  - "INCREMENTAL" - Achievement is incremental. Defaults to `nil`.
  - draft (GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationDetail.t): The draft data of the achievement. Defaults to `nil`.
  - id (String.t): The ID of the achievement. Defaults to `nil`.
  - initialState (String.t): The initial state of the achievement.
  Possible values are:  
  - "HIDDEN" - Achievement is hidden. 
  - "REVEALED" - Achievement is revealed. 
  - "UNLOCKED" - Achievement is unlocked. Defaults to `nil`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string gamesConfiguration#achievementConfiguration. Defaults to `gamesConfiguration#achievementConfiguration`.
  - published (GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationDetail.t): The read-only published data of the achievement. Defaults to `nil`.
  - stepsToUnlock (integer()): Steps to unlock. Only applicable to incremental achievements. Defaults to `nil`.
  - token (String.t): The token for this resource. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :achievementType => String.t(),
          :draft =>
            GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationDetail.t(),
          :id => String.t(),
          :initialState => String.t(),
          :kind => String.t(),
          :published =>
            GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationDetail.t(),
          :stepsToUnlock => integer(),
          :token => String.t()
        }

  field(:achievementType)

  field(
    :draft,
    as: GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationDetail
  )

  field(:id)
  field(:initialState)
  field(:kind)

  field(
    :published,
    as: GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfigurationDetail
  )

  field(:stepsToUnlock)
  field(:token)
end

defimpl Poison.Decoder,
  for: GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration do
  def decode(value, options) do
    GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.GamesConfiguration.V1configuration.Model.AchievementConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
