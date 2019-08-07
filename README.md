# web-platform-tests membership

This repository holds the list of administrators for [the web-platform-tests
GitHub organization](https://github.com/web-platform-tests). It uses
[Terraform](https://terraform.io) to synchronize the contents of the files with
the state of the organization on GitHub.com.

## Participation

If you would like to become a member, file a pull request which adds your
GitHub.com username to the appropriate `*.tf` file (the `terraform.tfstate`
file is machine-generated and should not be modified directly). A maintainer
will review your request, and pending approval, merge and apply the change.

## Administration

Project administrators can apply changes using the following steps:

1. Log in to GitHub.com and [create a personal access
   token](https://github.com/settings/tokens/new) with the `admin:org` scope
2. Save the token to a file named `github-oauth-token.txt` in the root of this
   repository
3. Install Terraform (version 0.12.6 or later)
4. Run the following command:

       terraform apply

The `terraform apply` command will query the state of the organization on
GitHub.com calculate what changes must be made to align that state with the
state of the files in this repository. It will display these changes and,
pending confirmation, issue the necessary API calls.
