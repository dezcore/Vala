public class Test.HeaderBar : Gtk.HeaderBar {
    public Gtk.Stack window_stack {get; construct;}

    public HeaderBar(Gtk.Stack stack) {
        Object(
            window_stack : stack
        );
    }

    construct {        
        show_close_button = true;
        //add button
        var add_button = new Gtk.Button.with_label("Add");
        add_button.get_style_context().add_class("suggested-action");
        add_button.valign = Gtk.Align.CENTER;
        pack_start(add_button);
        var menu_button = new Gtk.Button.from_icon_name("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        menu_button.valign = Gtk.Align.CENTER;
        //add icon button -> submenu (popup menu)
        var stack_switcher = new Gtk.StackSwitcher();
        stack_switcher.stack = window_stack;
        custom_title = stack_switcher;
        pack_end(menu_button);
    } 
}