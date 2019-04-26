# move in changelist

`. move to last change
`` move back
g;, g, move between position in changelist

See :changes

https://vi.stackexchange.com/a/2002

# moving inside doc

H, M, L - high, middle, low (inside current page view)

{, } - page up, page down

# tags

source: https://stackoverflow.com/a/33629584

Nevertheless, I think you should consider revising the need to create such a shortcut by taking the following standard Vim shortcuts into account:

<c-]> : Jumps to the tag definition of the word under cursor updating tag stack.
<c-w>} : Opens a preview window with the location of the tag definition. The cursor does not change its position, so tag stack is not updated.
<c-w>z : Close preview window.
<c-w>v : Split current window in two, keeping the cursor position.
So, you can use <c-w>}if you want to quickly check the tag declaration, followed by <c-w>z to close it. But if you want to navigate, then you can simply use <c-w>v to create a split followed by the standard <c-] to navigate in the tags. When you're done with it, you can simply close the window with <c-w>c.

# moving inside a class

]m, [m - next method, previous method
