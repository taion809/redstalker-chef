git "#{node[:blog][:document_root]}" do
    repository node[:blog][:git_repository]
    reference node[:blog][:git_revision]
    action :sync
end
