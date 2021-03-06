defmodule OtreebaOpenCannabisAPI.Api.Strains do
  @moduledoc """
  Documentation for OtreebaOpenCannabisAPI.Api.Strains.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.otreeba.com/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Find strain by Open Cannabis Product Code (OCPC).

  Returns a single strain.
  """
  def get_strain_by_ocpc(ocpc) do
    method = [method: :get]
    url = [url: "/strains/#{ocpc}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a list of all current strains.

  Returns a paginated list of strains.
  """
  def get_strains(page, count, sort) do
    method = [method: :get]
    url = [url: "/strains"]
    query_params = [query: [{:"page", page}, {:"count", count}, {:"sort", sort}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
