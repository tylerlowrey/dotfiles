use nvim_oxi::api;
use nvim_oxi::api::opts::SetKeymapOpts;
use nvim_oxi::api::types::Mode;

#[nvim_oxi::plugin]
fn nvim_rs() -> nvim_oxi::Result<()> {
    api::set_keymap(
        Mode::Insert,
        "jj",
        "<Esc>",
        &SetKeymapOpts::builder()
            .noremap(true)
            .build()
    ).expect("Could not set remap for jj");

    Ok(())
}