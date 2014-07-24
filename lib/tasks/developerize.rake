namespace :developerize do
  task :pull_data, [:local_db, :remote_db, :host] do |t, args|
    local_db = args[:local_db] or fail('local_db must be given')
    remote_db = args[:remote_db] or fail('remote_db must be given')
    host = args[:host] or fail('host must be given')

    puts '- Drop local db'
    system "dropdb #{local_db} -h localhost"

    puts '- Recreate local db'
    system "createdb #{local_db} -h localhost"

    puts '- Pull data from remote db'
    system "ssh #{host} 'pg_dump --no-owner #{remote_db}' | psql #{local_db} -h localhost"
  end
end
