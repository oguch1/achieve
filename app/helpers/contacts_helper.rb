module ContactsHelper
    def new_or_edit
        if action_name == 'new' || action_name == 'confirm'
            confirm_contacts_path
        elsif action_name == 'edit'
            contacts_path
            blogs_path
        end
    end
end
