defmodule NotesWeb.NoteLive do
  use NotesWeb, :live_view
  alias NotesWeb.Components.QuillComponent

  def mount(_params, _session, socket) do
    {:ok, assign(socket, content: "")}
  end

  def render(assigns) do
    ~H"""
    <div class="container mx-auto">
      <.live_component
        module={QuillComponent}
        id="note-editor"
        content={@content}
      />
    </div>
    """
  end

  def handle_event("quill-change", %{"content" => content}, socket) do
    {:noreply, assign(socket, content: content)}
  end
end
