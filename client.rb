require 'hyperresource'
require_relative 'todoapi/domain_model'

APIARY_MOCK_API_ROOT = 'http://mock-gtdtodoapi.apiary.io'
LOCAL_API_ROOT = 'http://localhost:4567'

api = HyperResource.new(root: APIARY_MOCK_API_ROOT)

api.folders.get.each do |f|
  folder = Folder.new
  folder.extend(FolderHALRepresentation)
  folder.from_hash(f.get.body)

  puts "==> folder (#{f.id}):"
  puts "  name: #{folder.name}"
  puts "  description: #{folder.description}"
  puts "  parent: #{folder.parent}"
  puts "  meta: #{folder.meta}\n\n"
end 
