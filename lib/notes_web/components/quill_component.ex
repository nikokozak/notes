defmodule NotesWeb.Components.QuillComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div id={@id} phx-hook="QuillEditor" class="quill-wrapper">
      <div id={"#{@id}-toolbar"} class="ql-toolbar ql-snow" phx-update="ignore">
        <span class="ql-formats">
          <select class="ql-header">
            <option value="1">Heading</option>
            <option value="2">Subheading</option>
            <option value="">Normal</option>
          </select>
        </span>
        <span class="ql-formats">
          <button type="button" class="ql-bold"></button>
          <button type="button" class="ql-italic"></button>
          <button type="button" class="ql-underline"></button>
        </span>
        <span class="ql-formats">
          <button type="button" class="ql-list" value="ordered"></button>
          <button type="button" class="ql-list" value="bullet"></button>
        </span>
        <span class="ql-formats">
          <button type="button" class="ql-link"></button>
          <button type="button" class="ql-image"></button>
        </span>
      </div>
      <div id={"#{@id}-editor"} class="ql-container ql-snow" phx-update="ignore">
        <%= @content %>
      </div>
    </div>
    """
  end

  def update(assigns, socket) do
    {:ok, assign(socket, assigns)}
  end
end
