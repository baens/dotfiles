# Dynamically create aliases for each ~/.local/share/chezmoi-* directory.
# e.g. chezmoi-inst -> chezmoi --source-dir ~/.local/share/chezmoi-inst
() {
  local dir name base="${HOME}/.local/share"
  for dir in "${base}"/chezmoi-*(N/); do
    name="${dir:t}"
    alias "${name}"="chezmoi --source-dir '${dir}'"
  done
}
