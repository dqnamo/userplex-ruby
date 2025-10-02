# frozen_string_literal: true

require_relative "../test_helper"

class Userplex::Test::Resources::PetsTest < Userplex::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @userplex.pets.create(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => Userplex::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Userplex::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Userplex::Category | nil,
        status: Userplex::Pet::Status | nil,
        tags: ^(Userplex::Internal::Type::ArrayOf[Userplex::Pet::Tag]) | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @userplex.pets.retrieve(0)

    assert_pattern do
      response => Userplex::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Userplex::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Userplex::Category | nil,
        status: Userplex::Pet::Status | nil,
        tags: ^(Userplex::Internal::Type::ArrayOf[Userplex::Pet::Tag]) | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @userplex.pets.update(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => Userplex::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Userplex::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Userplex::Category | nil,
        status: Userplex::Pet::Status | nil,
        tags: ^(Userplex::Internal::Type::ArrayOf[Userplex::Pet::Tag]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @userplex.pets.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_find_by_status
    skip("Prism tests are disabled")

    response = @userplex.pets.find_by_status

    assert_pattern do
      response => ^(Userplex::Internal::Type::ArrayOf[Userplex::Pet])
    end
  end

  def test_find_by_tags
    skip("Prism tests are disabled")

    response = @userplex.pets.find_by_tags

    assert_pattern do
      response => ^(Userplex::Internal::Type::ArrayOf[Userplex::Pet])
    end
  end

  def test_update_by_id
    skip("Prism tests are disabled")

    response = @userplex.pets.update_by_id(0)

    assert_pattern do
      response => nil
    end
  end

  def test_upload_image_required_params
    skip("Prism tests are disabled")

    response = @userplex.pets.upload_image(0, image: Pathname(__FILE__))

    assert_pattern do
      response => Userplex::Models::PetUploadImageResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        message: String | nil,
        type: String | nil
      }
    end
  end
end
