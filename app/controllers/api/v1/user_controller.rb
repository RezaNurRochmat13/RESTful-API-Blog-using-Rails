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

    def updateUsers
        updateUsers = User.find(params[:id])

        if updateUsers.update(user_param)
            render json: {
                message: "User berhasil diubah"
            }
        end
    end

    def deleteUsers
        deleteUsers = User.find(params[:id])

        if deleteUsers.destroy
            render json: {
                message: "User berhasil dihapus"
            }
        end
    end

    private
    def user_param
        params.require(:user).permit(:name, :address, :phone_number)
    end
end
