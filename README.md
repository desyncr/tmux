.tmux.conf
==========

My tmux configuration and settings.

Install
-------

* Clone this repo somewhere:

        cd ~
        git clone git@github.com:asphxia/tmux.git .tmux

* Install plugins: https://github.com/tmux-plugins/tpm

* Use it:

        mv .tmux.conf .tmux.conf.$(date +%s) # back it up
        ln -s $PWD/.tmux/.tmux.conf .tmux.conf

* ``source-file ~/.tmux.conf`` and done!

Keybindings
----------

* Prefix

    * `C-a`

* Splitting windows

    * `prefix + {|,\}`: Vertical split
    * `prefix + {-,_}`: Horizontal split

* Moving between panels

    * `prefix + [h,j,k,l]`: Move to above, left, right, and below split
    * `prefix + o`: Rotate panels
    * `prefix + ;`: Move to previously active panel

* Resizing panels

    * `prefix + [H,J,K,L]`: Resize current panel

* Working with windows

    * `prefix + c`: Create a new window
    * `prefix + [1-9]`: Move to i window
    * `prefix + l`: Move to previously selected window
    * `prefix +[n,m]`: Change to previous or next window

* Misc

    * `prefix + R`: Reload tmux's configuration
    * `prefix + E`: Edit tmux's configuration
    * `prefix + :`: Tmux command

## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] license.

  [1]: https://github.com/desyncr/tmux/
  [2]: http://www.gnu.org/licenses/gpl.html

