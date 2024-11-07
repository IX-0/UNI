In this atempt i couldn't remove part of the tree without having a seg fault.

This happened cause when i free'd memory for one subtree, the parent node 
still had a pointer to the memory block of the child that i free'd
any subsequent try to either add nodes to that block would fail, since my 
code checks if pointer to child was NULL and the respective pointer was set to a memory address.

Next iteration wild have an extra field: "parent", this add more space complexity, but makes
it possible to avoid this problem.
