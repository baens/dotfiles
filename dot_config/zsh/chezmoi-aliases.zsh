# Dynamically create aliases for each ~/.local/share/chezmoi-* directory.
() {
  local dir name base="${HOME}/.local/share"
  for dir in "${base}"/chezmoi-*(N/); do
    name="${dir:t}"
    alias "${name}"="chezmoi -S '${dir}'"
  done
}
