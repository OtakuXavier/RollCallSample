class RollCallingController < ApplicationController


    def rollcall

      if params[:student_id].nil?
         render :json => {stat: "No Params"}
        return
      end

      @Student = StudentList.find_by_student_id(params[:student_id])
      if @Student.nil?
        render :json => {stat: "No Student"}
        return
      end

      require 'securerandom'
      s = SecureRandom.urlsafe_base64(10)
      RollCall.create(:student_id => params[:student_id], :captcha => s)
      render :json => {stat: s}

    end


    def isrollcall

      if params[:student_id].nil?
         render :json => {stat: "No Params"}
        return
      end

      @Student = StudentList.find_by_student_id(params[:student_id])
      if @Student.nil?
        render :json => {stat: "No Student"}
        return
      end

      @rollcall = RollCall.find_by_student_id(params[:student_id])

      if @rollcall.captcha != params[:captcha]
        render :json => {stat: "RollCall Fail"}
        return
      end
        @rollcall.is_rollcall="T"
        @rollcall.save
        render :json => {stat: "RollCall Finish"}
    end


end
