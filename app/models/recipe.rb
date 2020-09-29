class Recipe

  attr_accessor :id, :title, :description, :image, :chef, :tags

  def initialize(id, title, image, description = nil, chef = nil, tags = nil)
    @id = id
    @title = title
    @image = image
    @description = description if description.present?
    @chef = Chef.new(chef) if chef.present?
    @tags = tags.each { |tag| Tag.new(tag) } if tags.present?
  end

  def self.load(recipe_id)
    recipe = client.entry(recipe_id)
    chef = recipe.chef.name if recipe.fields.key?(:chef)
    tags = recipe.tags.map(&:name) if recipe.fields.key?(:tags)
    Recipe.new(recipe.id, recipe.title, recipe.photo.url, recipe.description, chef, tags)
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.load_recipes
    GC.start
    client.entries(content_type: 'recipe').each do |recipe|
      Recipe.new(recipe.id, recipe.title, recipe.photo.url)
    end
  end

  def self.client
    @client ||= Contentful::Client.new(
      access_token: ENV['contentful_access_token'],
      space: ENV['contentful_space_id']
    )
  end
end
