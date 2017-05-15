class HomeController < ApplicationController
  def index
    #좋아요
    @jujum1 = Hash.new
    @merong_count = Hash.new
    @jujum_count = Jujum.count
    @merong_no = Hash.new
    
    @jujum_count.times do |m|
      @no = 0
      @merong_count[m+1]=Merong.where(:jujum_id => m+1).count
      Merong.where(:jujum_id => m+1).each do |n|
        if n.getip == request.ip
          @no = 1
        end
      end
      @merong_no[m+1]=@no
    end
    
    #주점
    @jujums = Jujum.all
  end
  
  def ho
    @remote_ip = request.ip
    @ips = Merong.where(:jujum_id =>params[:jujum_id])
    @status = 0
    @ips.each do |i|
      if i.getip == @remote_ip
        @status = 1
      end
    end
    
    if @status == 0
      merong = Merong.new
      merong.getip = @remote_ip
      merong.jujum_id = params[:jujum_id]
      merong.save
    end
    redirect_to "/"
  end
    
end

