class ImagesController < ApplicationController
  # GET /images
  # GET /images.json
  def index
    @images = Image.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @images }
    end
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @image = Image.find(params[:id])
    @formatted_image = MiniMagick::Image.open("#{@image.link}")
    @formatted_image.sketch 15
    @formatted_image.write 'public/images/my_test.jpg'
    @formatted_image = MiniMagick::Image.open("#{@image.link}")
    @formatted_image.charcoal 0
    @formatted_image.write 'public/images/my_test2.jpg'
    @formatted_image = MiniMagick::Image.open("#{@image.link}")
    @formatted_image.emboss 2
    @formatted_image.write 'public/images/my_test3.jpg'
    @formatted_image = MiniMagick::Image.open("#{@image.link}")
    @formatted_image.normalize
    @formatted_image.write 'public/images/my_test4.jpg'
    @formatted_image = MiniMagick::Image.open("#{@image.link}")
    @formatted_image.implode -3
    @formatted_image.write 'public/images/my_test5.jpg'
    @formatted_image = MiniMagick::Image.open("#{@image.link}")
    @formatted_image.monochrome
    @formatted_image.write 'public/images/my_test6.jpg'
    @formatted_image = MiniMagick::Image.open("#{@image.link}")
    @formatted_image.solarize(threshold=50)
    @formatted_image.write 'public/images/my_test7.jpg'

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/new
  # GET /images/new.json
  def new
    @image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(params[:image])

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
        format.json { render json: @image, status: :created, location: @image }
      else
        format.html { render action: "new" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.json
  def update
    @image = Image.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to images_url }
      format.json { head :no_content }
    end
  end
end
