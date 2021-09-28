defmodule Rumbl.Accounts do
    @moduledoc """
    The Accounts context.
    """

    alias Rumbl.Repo
    alias Rumbl.Accounts.User

    def get_user(id) do
        Repo.get(User, id)
    end

    def get_user!(id) do
        Repo.get!(User, id)
    end

    def get_user_by(params) do
        Repo.get_by(User, params)
    end

    def list_users do
        Repo.all(User)
    end

    def changeset(user, attr) do
        user
        |> cast(attr, [:name, :username])
        |> validate_required([:name, :username])
        |> validate_length(:username, min: 1, max: 20)
    end

    def change_user(%User{} = user) do
        User.changeset(user, %{})
    end
end