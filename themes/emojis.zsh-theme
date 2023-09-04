# Forked from tjkirch

ZSH_THEME_GIT_PROMPT_PREFIX="🌳️ "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" 🤨 "
ZSH_THEME_GIT_PROMPT_CLEAN=" 😊️ "

function prompt_emoji {
	if [ $UID -eq 0 ]; then echo "🔐"; else echo "🧑"; fi
}

PROMPT='%(?,,%{$fg[lightgrey]%}😵 $?
)$(prompt_emoji) %n 💻 %m 📂 %~ $(git_prompt_info)🕓 %*%{$reset_color%}
📝 '

RPROMPT=''
