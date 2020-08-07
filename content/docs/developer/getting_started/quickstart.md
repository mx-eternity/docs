# Quick Start

## Example Plugin

lib.rs
```rust
// Define a function that is imported into the module.
// See the list (TODO) what functions are available to be imported.
// We use here the send_notice function which sends a m.notice event
extern "C" {
    fn send_notice(content_ptr: *const u8, content_len: usize, room_id_ptr: *const u8, room_id_len: usize);
}

// Export a function named "main_plugin". This can be called
// from the framework!
#[no_mangle]
pub extern fn main_plugin() {
    // Call the function we just imported and pass in
    // the offset of our string and its length as parameters.
    let content = "Hello";
    let room_id = "!FJymnHKxIlQeNDkaZW:ubports.chat";
    unsafe {
      send_notice(content.as_ptr(), content.len(), room_id.as_ptr(), room_id.len());
    }
}
```

