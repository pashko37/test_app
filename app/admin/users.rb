ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :comment

  index do
    selectable_column
    id_column
    column :email
    column :quiz do |q|
      q.result.map { |r|  r.keys}
    end
    column :result
    column :comment
    column 'send_mail' do |user|
      link_to 'send_mail', send_mail_admin_user_path(user)
    end

    actions
  end

  form do |f|
    attributes_table_for resource do
      row :email
      row :result
    end
    f.inputs do
      f.input :comment
    end
    f.actions
  end
  member_action :send_mail, method: :get do
    resource.send_mail
    redirect_to admin_users_path, notice: 'Success'
  end


end
