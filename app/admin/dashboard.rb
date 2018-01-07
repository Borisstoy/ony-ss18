ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
          panel "Subscriptions récentes newsletters" do
            ul do
              Newsletter.last(5).map do |newsletter|
                li link_to(newsletter.email, admin_newsletter_path(newsletter))
              end
            end
          end
        end
      end
  end
end
