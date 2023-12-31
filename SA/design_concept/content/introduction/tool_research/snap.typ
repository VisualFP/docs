= Snap!

Snap! is a block-based programming tool developed by Berkeley University which
allows the creation of imperative programs in a Scratch-like manner.

A user can create programs to control a cursor in a graphical environment, e.g.,
navigate the cursor to a specific position and draw a line.  For that, Snap!
offers pre-defined commands like basic arithmetic operations, cursor-, pen- &
sound-controls, and flow controls like "if" blocks.  For lists, snap offers some
control blocks that allow users to work with lists in a functional fashion, as
seen in the red blocks in @snap_screenshot.

#figure(
    image("../../../static/snap_screenshot.png", width: 90%),
    caption: [Screenshot of a block expression in Snap! @snap-manual]
)<snap_screenshot>

However, everything else can only be done imperatively, making the functional
aspects more of an additional feature than a core concept of Snap!.

Users can also create new block commands based on existing commands, which
allows users to reuse their code. But unlike usual functions, custom
blocks aren't able to take arguments from their caller @snap-manual.

Regarding usability, we feel that Snap! isn't very difficult to understand, but
also not very intuitive, primarily because some icons and command names aren't
obvious in their meaning.