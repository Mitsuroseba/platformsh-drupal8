<?php

/**
 * Implements hook_install_tasks().
 */
function curiosity_install_tasks($install_state) {
  $tasks = [
    'curiosity_setup_cleanup' => [
      'display_name' => t('Cleanup'),
      'display' => FALSE,
      'type' => 'normal',
    ],
  ];

  return $tasks;
}

/**
 * Post profile install function.
 */
function curiosity_setup_cleanup() {
  \Drupal::service('module_installer')->install([
    'audit_log',
    'audit_log_deploy',
    'audit_log_rest',
    'audit_log_ui',
    'audit_log_rest_example',
  ]);
}
