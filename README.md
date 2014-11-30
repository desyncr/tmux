.tmux.conf
==========

My tmux configuration and settings.

Install
-------

* Clone this repo somewhere:

        cd ~
        git clone git@github.com:asphxia/tmux.git .tmux

* Use it:

        mv .tmux.conf .tmux.conf.$(date +%s) # back it up
        ln -s $PWD/.tmux/.tmux.conf .tmux.conf

* ``source-file ~/.tmux.conf`` and done!

Keybindings
----------

* Prefix

    * ```

* Splitting windows

    * `prefix + \`: Vertical split
    * `prefix + /`: Horizontal split

* Moving between splits

    * `prefix + [h,j,k,l]`: Move to above, left, right, and below split
    * `prefix + o`: Rotate panels
    * `prefix + ;`: Move to previously active panel

* Resizing splits

    * `Ctrl + [h,j,k,l]`: Resize current split

* Working with windows

    * `prefix + c`: Create a new window
    * `prefix + [1,2,3,4,5,6,7,8,9,0]`: Move to i window
    * `prefix + l`: Move to previously selected window
    * `prefix +[n,p]`: Change to next or previous window

* Misc

    * `prefix + r`: Reload configuration
    * `prefix + :`: Tmux command


## Contact and Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/asphxia/tmux/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
  
