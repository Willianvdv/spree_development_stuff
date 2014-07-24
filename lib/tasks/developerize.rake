namespace :developerize do
  task :migrate do
    task :pull_data, [:local_db, :remote_db] do |t, args|
      local_db = args[:local_db]

      puts local_db

    end
  end
end
