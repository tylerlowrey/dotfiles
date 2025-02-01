use nvim_oxi::api;
use nvim_oxi::api::opts::{OptionOpts, SetKeymapOpts};
use nvim_oxi::api::types::{Mode, WindowBorder, WindowConfig, WindowRelativeTo, WindowStyle};

#[nvim_oxi::plugin]
fn nvim_rs() -> nvim_oxi::Result<()> {
    setup_keymaps();
    let option_value_settings = OptionOpts::builder().build();
    api::set_option_value("number", true, &option_value_settings)?;
    let option_value_settings = OptionOpts::builder().build();
    api::set_option_value("tabstop", 4, &option_value_settings)?;

    Ok(())
}

fn setup_keymaps() {
    api::set_keymap(
        Mode::Insert,
        "jj",
        "<Esc>",
        &SetKeymapOpts::builder().noremap(true).build(),
    )
    .expect("Could not set remap for jj");

    api::set_keymap(
        Mode::Terminal,
        "jj",
        "<C-\\><C-n>",
        &SetKeymapOpts::builder().noremap(true).build(),
    )
    .expect("Could not set terminal remap for jj");
}

#[allow(dead_code)]
fn floating_window() -> nvim_oxi::Result<()> {
    let mut buffer = api::create_buf(false, true).expect("Failed to create buffer");

    buffer.set_lines(0..10, false, ["Hello", "World"])?;

    //let current_window = api::get_current_win();
    let editor_window_height = api::get_current_win().get_height()?;
    let editor_window_width = api::get_current_win().get_width()?;

    let window_config = WindowConfig::builder()
        .border(WindowBorder::Single)
        .relative(WindowRelativeTo::Editor)
        .row(editor_window_height / 2 - 10)
        .col(editor_window_width / 2 - 20)
        .height(20)
        .width(40)
        .style(WindowStyle::Minimal)
        .build();

    let mut window = api::open_win(&buffer, true, &window_config).expect("Could not open window");

    window.set_cursor(1, 0)?;
    api::set_current_win(&window)?;
    window.set_cursor(1, 0)?;

    Ok(())
}
