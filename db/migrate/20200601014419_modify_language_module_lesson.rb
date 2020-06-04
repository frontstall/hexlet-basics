class ModifyLanguageModuleLesson < ActiveRecord::Migration[6.0]
  def change
    remove_column :language_module_lessons, :order
    remove_column :language_module_lessons, :natural_order
    remove_column :language_module_lessons, :original_code
    remove_column :language_module_lessons, :prepared_code
    remove_column :language_module_lessons, :test_code
    remove_column :language_module_lessons, :path_to_code

    add_reference :language_module_lessons, :current_version, index: true
  end
end