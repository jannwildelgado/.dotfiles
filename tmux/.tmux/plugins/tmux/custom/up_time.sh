show_up_time() {
  local index icon color text module

  index=$1
  icon="$(  get_tmux_option "@catppuccin_ip_address_icon"  ""           )"
  color="$( get_tmux_option "@catppuccin_ip_address_color" "$thm_cyan" )"
  text="$(  get_tmux_option "@catppuccin_ip_address_text"  "#{uptime}" )"

  module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}

