glue: bundle exec rackup -p 4000
write-side: cd write-model-side; bundle exec rails s -p 4001
read-side:  cd read-model-side;  bundle exec rails s -p 4002
eventstore: cd eventstore; ./run-node.sh --db ./ESData
