use zed_extension_api as zed;

struct FlintExtension {}

impl zed::Extension for FlintExtension {
    fn new() -> Self
    where
        Self: Sized,
    {
        Self {}
    }
}

zed::register_extension!(FlintExtension);
