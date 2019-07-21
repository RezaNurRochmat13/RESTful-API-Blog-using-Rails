class Api::V1::UserController < ApplicationController
    protect_from_forgery

    def showAllUsers
        users = User.all
        countUsers = User.count


        render json: {
            total: countUsers,
            count: countUsers,
            data: users
        }, status: 200
    end

    def showDetailUsers
        detailUsers = User.find(params[:id])

        render json: {
            data: detailUsers
        }
    end

    def createNewUsers
        createUsers = User.create(user_param)

        if createUsers.save!
            render json: {
                message: "User berhasil ditambahkan"
            }
        end
    end

    private
    def user_param
        params.require(:user).permit(:name, :address, :phone_number)
    end
end
