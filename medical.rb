require 'decisiontree'

attributes = ['Temp']

# training data
training = [
    [36.6, 'healthy'],
    [37, 'sick'],
    [38, 'sick'],
    [36.7, 'healthy'],
    [40, 'sick'],
    [50, 'really sick'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train

# decision = dec_tree.predict([37, 'sick'])
# puts "Predicted: #{decision} ... True decision: #{test.last}";

#medical diagnosis from a doctor being compared to the ML model
test = [36.4, 'healthy']
dec_tree.predict(test)

