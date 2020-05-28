- `obj_controller` has `global.free_range`
    - this var prevents `obj_controller` from selecting 2 or more objects at any one time

```js
if (global.free_range) {
    // get all of the clothes that the mouse is colliding with
    // check if mouse if colliding with anything
    // loop through all of the objects that the mouse is colliding with
        // check the depth of all of the objects
        // store the object that is the closest to the player
    // assign the closet object as 'global.locked_instance'    
}
```