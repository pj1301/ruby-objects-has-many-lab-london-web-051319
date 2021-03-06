class Author

   attr_accessor :name 

      @@post_count = 0

   def initialize(name)
      @name = name
      @posts = []
   end

   def add_post(post)
      self.posts << post
      post.author = self
      @@post_count += 1
   end

   def add_post_by_title(title)
      post = Post.new(title)
      post.author = self
      @posts << post
      @@post_count += 1
   end

   def posts # we don't add to accessor as we only want to read from it externally. Changes happen internally.
      @posts
   end

   def self.post_count
      @@post_count
   end

end