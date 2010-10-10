#!/bin/bash


PROMPT="${bold_blue}\[\$(prompt_char)\]\[\$(git_prompt_info)\]${blue}\$(rvm_version_prompt) ${orange}\h ${reset_color}in ${green}\w ${reset_color}\[→ "

# git theming
GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX=" |"
RVM_THEME_PROMPT_SUFFIX="|"