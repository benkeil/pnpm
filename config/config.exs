import Config

config :git_ops,
       mix_project: Mix.Project.get!(),
       changelog_file: "CHANGELOG.md",
       repository_url: "https://github.com/benkeil/pnpm",
       types: [],
       manage_mix_version?: true,
       manage_readme_version: true,
       version_tag_prefix: "v"

config :junit_formatter,
       print_report_file: true,
       report_dir: "./reports",
       use_project_subdirectory?: true,
       automatic_create_dir?: true,
       include_filename?: true,
       include_file_line?: true
