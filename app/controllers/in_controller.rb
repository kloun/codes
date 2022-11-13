class InController < ApplicationController
    def hi
        rand = Random.rand(1..10)
        RandNumber.create(number: rand)
        @r = rand.to_s
        @lastnumbers = RandNumber.all.limit(5).order("created_at DESC")
    end
    def morehi
      @morenumbers = RandNumber.all.offset(5).order("created_at DESC")
    end

end
