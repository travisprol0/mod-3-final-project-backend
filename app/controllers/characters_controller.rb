class CharactersController < ApplicationController
    def index
        char = Character.first
        render json: char
    end
end
