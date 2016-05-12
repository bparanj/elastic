class Article < ApplicationRecord
  include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks
  
end

# Move the following to a rake task
                                                
# Index all article records from the DB to Elasticsearch
# for auto sync model with elastic search
Article.import force: true