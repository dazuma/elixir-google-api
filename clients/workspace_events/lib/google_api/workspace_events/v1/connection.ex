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

defmodule GoogleApi.WorkspaceEvents.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.WorkspaceEvents.V1.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # Private Service: https://www.googleapis.com/auth/chat.bot
      "https://www.googleapis.com/auth/chat.bot",

      # View, add, update, and remove members from conversations in Google Chat
      "https://www.googleapis.com/auth/chat.memberships",

      # View members in Google Chat conversations.
      "https://www.googleapis.com/auth/chat.memberships.readonly",

      # View, compose, send, update, and delete messages, and add, view, and delete reactions to messages.
      "https://www.googleapis.com/auth/chat.messages",

      # View, add, and delete reactions to messages in Google Chat
      "https://www.googleapis.com/auth/chat.messages.reactions",

      # View reactions to messages in Google Chat
      "https://www.googleapis.com/auth/chat.messages.reactions.readonly",

      # View messages and reactions in Google Chat
      "https://www.googleapis.com/auth/chat.messages.readonly",

      # Create conversations and spaces and see or edit metadata (including history settings and access settings) in Google Chat
      "https://www.googleapis.com/auth/chat.spaces",

      # View chat and spaces in Google Chat
      "https://www.googleapis.com/auth/chat.spaces.readonly",

      # Create, edit, and see information about your Google Meet conferences created by the app.
      "https://www.googleapis.com/auth/meetings.space.created",

      # Read information about any of your Google Meet conferences
      "https://www.googleapis.com/auth/meetings.space.readonly"
    ],
    otp_app: :google_api_workspace_events,
    base_url: "https://workspaceevents.googleapis.com/"
end
