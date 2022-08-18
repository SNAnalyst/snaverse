
#' Set up your Rstudio in the `SNA4DS`way
#'
#' Set up your Rstudio in the `SNA4DS`way
#'
#' This function automatically sets up your Rstudio IDE in the optimized way needed for the
#' SNA4DS course.
#' There is one installation option
#' @param setup set to "SNA4DS". If any other option is specified, the function
#' will return a message suggesting to explore alternative Rstudio set up options
#' using the package `rstudio.prefs` and the function `use_rstudio_prefs`.
#'
#' @return A message that informs about succesfull/unsuccesful installation.
#' @export rstudiofy
#'
#' @examples
#' \dontrun{
#' rstudiofy(setup = "SNA4DS")
#' }

rstudiofy <- function(setup = "SNA4DS") {

  if (setup == "SNA4DS") {

    rstudio.prefs::use_rstudio_prefs( always_save_history = TRUE,

                                      auto_append_newline = TRUE,

                                      auto_discover_package_dependencies = TRUE,

                                      auto_expand_error_tracebacks = TRUE,

                                      check_arguments_to_r_function_calls = TRUE,

                                      check_unexpected_assignment_in_function_call = TRUE,

                                      code_completion = "always",

                                      code_completion_characters = 3,

                                      code_completion_delay = 250,

                                      code_completion_other = "always",

                                      console_code_completion = TRUE,

                                      console_double_click_select = TRUE,

                                      continue_comments_on_newline = TRUE,

                                      full_project_path_in_window_title = TRUE,

                                      highlight_r_function_calls = TRUE,

                                      insert_parens_after_function_completion = TRUE,

                                      insert_matching = TRUE,

                                      insert_native_pipe_operator = TRUE,

                                      load_workspace = FALSE,

                                      margin_column = 80,

                                      rainbow_parentheses = TRUE,

                                      real_time_spellchecking = TRUE,

                                      save_workspace = "never",

                                      show_function_signature_tooltips = TRUE,

                                      show_help_tooltip_on_idle = TRUE,

                                      show_diagnostics_other = TRUE,

                                      show_diagnostics_r = TRUE,

                                      show_last_dot_value = TRUE,

                                      show_line_numbers = TRUE,

                                      show_margin = TRUE,

                                      show_memory_usage = TRUE,

                                      show_panel_focus_rectangle = TRUE,

                                      soft_wrap_r_files = TRUE,

                                      sort_file_names_naturally = TRUE,

                                      source_with_echo = TRUE,

                                      tab_multiline_completion = FALSE,

                                      syntax_color_console = TRUE,

                                      tab_completion = TRUE,

                                      visual_markdown_editing_show_margin = TRUE,

                                      warn_if_no_such_variable_in_scope = TRUE,

                                      wrap_tab_navigation = FALSE

    )

    cat("All good! Move on to cool stuff :)")

  } else {

    cat("Please, explore different setup options with rstudio.prefs::use_rstudio_prefs()")
  }

}
