use zed_extension_api as zed;

struct FlintExtension {}

impl zed::Extension for FlintExtension {
    fn new() -> Self
    where
        Self: Sized,
    {
        Self {}
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        let fls = worktree.which("fls").ok_or_else(|| {
            "The Flint language server (`fls`) could not be found on your PATH. Install it and make sure it is available on the PATH.".to_string()
        })?;
        Ok(zed::Command {
            command: fls,
            args: Vec::new(),
            env: Default::default(),
        })
    }
}

zed::register_extension!(FlintExtension);