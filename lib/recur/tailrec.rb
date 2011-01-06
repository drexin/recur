module TailRec
  def recur *args
    [:__recur__] + args
  end
  
  def self.included base
    base.extend ClassMethods
  end

  module ClassMethods
    def tailrec
      @tailrec = true
    end
    
    def method_added name
      if @tailrec
        @tailrec = false
        alias_method "__recur_#{name}__", name
        define_method name do |*args|
          res = recur *args
          while(res.kind_of?(Array) && res.first == :__recur__) do
            res = send("__recur_#{__method__}__".to_sym, *res.drop(1))
          end
          res
        end
      end
    end
  end

end
