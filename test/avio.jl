using Base.Test
using Images
import VideoIO

testdir = joinpath(Pkg.dir("VideoIO"), "test")
videodir = joinpath(Pkg.dir("VideoIO"), "videos")

VideoIO.TestVideos.available()
VideoIO.TestVideos.download_all()

swapext(f, new_ext) = "$(splitext(f)[1])$new_ext"

println(STDERR, "Testing file reading...")
for name in VideoIO.TestVideos.names()
    println(STDERR, "   Testing $name...")

    first_frame_file = joinpath(testdir, swapext(name, ".png"))
    first_frame = imread(first_frame_file) # comment line when creating png files

    f = VideoIO.testvideo(name)
    v = VideoIO.openvideo(f)

    img = read(v, Image)

    # Find the first non-trivial image
    while all(green(img) .== 0x00) || all(blue(img) .== 0x00) || all(red(img) .== 0x00) || maximum(img) < 0xcf
        read!(v, img)
    end

    #imwrite(img, first_frame_file)        # uncomment line when creating png files

    @test img == first_frame               # comment line when creating png files

    while !eof(v)
        read!(v, img)
    end
end

println(STDERR, "Testing IO reading...")
for name in VideoIO.TestVideos.names()
    # TODO: fix me?
    (beginswith(name, "ladybird") || beginswith(name, "NPS")) && continue

    println(STDERR, "   Testing $name...")
    first_frame_file = joinpath(testdir, swapext(name, ".png"))
    first_frame = imread(first_frame_file) # comment line when creating png files

    filename = joinpath(videodir, name)
    v = VideoIO.openvideo(open(filename))

    img = read(v, Image)

    # Find the first non-trivial image
    while all(green(img) .== 0x00) || all(blue(img) .== 0x00) || all(red(img) .== 0x00) || maximum(img) < 0xcf
        read!(v, img)
    end

    #imwrite(img, first_frame_file)        # uncomment line when creating png files

    @test img == first_frame               # comment line when creating png files

    while !eof(v)
        read!(v, img)
    end
end

VideoIO.testvideo("ladybird") # coverage testing
@test_throws ErrorException VideoIO.testvideo("rickroll")
@test_throws ErrorException VideoIO.testvideo("")


#VideoIO.TestVideos.remove_all()
