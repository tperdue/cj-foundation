class AddColumnAboutPages < ActiveRecord::Migration[6.1]
  def change
    add_column :about_pages, :scholar1_name, :string
    add_column :about_pages, :scholar1_grad_year, :integer
    add_column :about_pages, :scholar1_major, :string
    add_column :about_pages, :scholar1_testimonial, :string

    add_column :about_pages, :scholar2_name, :string
    add_column :about_pages, :scholar2_grad_year, :integer
    add_column :about_pages, :scholar2_major, :string
    add_column :about_pages, :scholar2_testimonial, :string

    add_column :about_pages, :scholar3_name, :string
    add_column :about_pages, :scholar3_grad_year, :integer
    add_column :about_pages, :scholar3_major, :string
    add_column :about_pages, :scholar3_testimonial, :string
  end
end
