## This file is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 2 of
## the License, or (at your option) any later version.

#
# Shell configurations
#

for file in ~/dotfiles/shell/{bash_prompt,exports}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
