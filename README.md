Adds Valimisms to your ruby

    def code_is_awesome
      confirm
    end

For more advanced usage of valim, you might try:

    class User < ActiveRecord::Base
      # stuff here
    end

    (User.count > 5).confirm / deny? # => confirm

Don't be stupid

    class User < ActiveRecord::Base
      def have_at_least_x_users(x)
        facepalm if x < 0
        (count >= x).confirm / deny?
      end
    end
