git "#{node[:redstalker][:document_root]}" do
    repository node[:redstalker][:git_repository]
    reference node[:redstalker][:git_revision]
    action :sync
end
