import Config

config :git_ops,
       mix_project: Mix.Project.get!(),
       changelog_file: "CHANGELOG.md",
       repository_url: "https://github.com/benkeil/pnpm",
       types: [
         # Makes an allowed commit type called `important` that gets
         # a section in the changelog with the header "Important Changes"
         important: [
           header: "Important Changes"
         ]
       ],
         # Instructs the tool to manage your mix version in your `mix.exs` file
         # See below for more information
       manage_mix_version?: true,
         # Instructs the tool to manage the version in your README.md
         # Pass in `true` to use `"README.md"` or a string to customize
       manage_readme_version: true,
       version_tag_prefix: "v"

config :junit_formatter,
       print_report_file: true,
       report_dir: "./reports",
       use_project_subdirectory?: true,
       automatic_create_dir?: true,
       include_filename?: true,
       include_file_line?: true
