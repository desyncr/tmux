.tmux.conf
==========

My tmux configuration and settings.

Install
-------

```
make install

```

Manual install
--------------

* Clone this repo somewhere:

        git clone https://github.com/desyncr/tmux.git ~/.tmux

* Install plugins: https://github.com/tmux-plugins/tpm

* Use it:

        mv .tmux.conf .tmux.conf.$(date +%s) # back it up
        ln -s ~/.tmux/tmux.conf .tmux.conf

* ``prefix + :`` + ``source-file ~/.tmux.conf``

* Install tpm: ``git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm``

        * Install plugins: ``prefix + I``

Keybindings
----------

* Prefix

    * `C-a`

* Splitting windows

    * `prefix + {|,\}`: Vertical split
    * `prefix + {-,_}`: Horizontal split

* Working with panels

    * `prefix + [h,j,k,l]`: Move to above, left, right, and below split
    * `prefix + [{,}]`: Rotate panels
    * `prefix + ;`: Move to previously active panel
    * `prefix + [H,J,K,L]`: Resize current panel
    * `prefix + !`: Break pane into a new window
    * `:move-pane -t :3`: Move current pane to window #3

* Working with windows

    * `prefix + c`: Create a new window
    * `prefix + ,`: Rename window
    * `prefix + '`: Select window index
    * `prefix + [<,>]`: Swap windows
    * `prefix + [1-9]`: Move to i window
    * `prefix +[p,n]`: Change to previous or next window

* Working with sessions

    * `prefix + [(,)]`: Previous and next session
    * `prefix + $`: Rename session
    * `prefix + C-s`: Save current session (tmux-resurrect)
    * `prefix + C-r`: Restore session

* Misc

    * `prefix + R`: Reload tmux's configuration
    * `prefix + E`: Edit tmux's configuration
    * `prefix + :`: Tmux command
    * `prefix + ?`: Show keybindings


Also see: https://gist.github.com/desyncr/e767f96542ecad70a8e3d5fd006632e0
and: https://gist.github.com/Starefossen/5955406
and: https://gist.github.com/andreyvit/2921703

## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] license.

  [1]: https://github.com/desyncr/tmux/
  [2]: http://www.gnu.org/licenses/gpl.html

