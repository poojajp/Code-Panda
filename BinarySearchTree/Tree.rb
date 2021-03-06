require "./TreeNode.rb"
class Tree 
 attr_accessor :root
	def initialize(root)
	 @root = TreeNode.new(root)
	end
	
	def insertBst(key)
	  ptr = @root 
	  while ptr != nil 
	       if key < ptr.data 
		ptr1 = ptr
		ptr = ptr.leftchild
	       end
	       if key > ptr.data 
		ptr1 = ptr 
		ptr = ptr.rightchild 
	       end 
	       if ptr.data = key 
		puts "Already Exist"
	       end 
	  end 
	  if ptr == nil 
            node = TreeNode.new(key)
	    node.leftchild = nil 
	    node.rightchild = nil
	     if ptr1.data < key 
		ptr1.rightchild = node 
	     end
             if ptr1.data > key 
		ptr1.leftchild = node
	     end
          end
        end

	def searchBst(key)
	  ptr = @root
	  while ptr != nil && ptr.data != key
		if ptr.data < key 
		   ptr = ptr.rightchild 
		end
		if ptr.data > key 
		   ptr = ptr.leftchild
		end
	  end 
	  if ptr.data == key 
	     puts key + "is contained in the Tree"
	  end 
	  else 
	     puts "Ooops..the #{key} is not Available in the Tree!"
	  end
	end

	def deleteBst(key)
	   ptr = @root 
	   while ptr != nil && ptr.data != key 
		if key < ptr.data
		 parent = ptr
		 ptr = ptr.leftchild 
		end 
		if key > ptr.data 
		 parent = ptr 
		 ptr.rightchild
		end 
	   end
	   if ptr.data != key 
      	      puts "Ooops..the #{key} is not Available in the Tree!"
	   end 
	   else 
		if ptr.leftchild == nil && ptr.rightchild == nil #case:1 were the key to be deleted is a leaf node 
			if parent.leftchild == ptr 
			   parent.leftchild = nil 
			end 
			else 
			   parent.rightchild = nil 
			end 
		end 
	    
		
		if ptr.leftchild == nil || ptr.rightchild == nil #case:2 were the key to be deleted exactly has only one child which might be a
			if ptr.leftchild != nil 		 #leftchild or a rightchild
			   ptr.data = ptr.leftchild.data
			   ptr.leftchild = nil 
			end 
			if ptr.rightchild !=nil 
			   ptr.data = ptr.rightchild.data
			   ptr.leftchild = nil 
			end 
		end
		if ptr.leftchild != nil && ptr.rightchild != nil #case:3 were the key to be deleted has both leftchild and rightchild
			succ_ptr = succr(ptr)
			ptr.data = succ_ptr.data 
			succ_ptr = nil 
		end 
	  end
	 
	end
	
	def succr(node) 			
		node = node.rightchild 				# the function returns the inorder successor of node to be deleted
		if node.leftchild != nil 
		   node = node.leftchild 
		end 
		return node
	end		

	def inorderRecursive
		ptr = @root 
		while ptr != null 
			inorderRecursive(ptr.leftchild)
			puts ptr.data
			inorderRecursive(ptr.rightchild)
		end
		
	def inorderIterative
		ptr = @root 
		stack = [] 
		stack.push(ptr)
			if stack[0] != nil 
			  stack.push(ptr.leftchild)
			end
			else
				if stack.nil?
					puts "Done"
				end
				else
					p stack.pop
					ptr = ptr.rightchild
				end
			end
	end

				   
end

