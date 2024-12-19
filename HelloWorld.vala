
async void read_file_async(string path, MainLoop loop) {

    try {

        var file = File.new_for_path(path);

        var stream = yield file.read_async();

        var data = yield stream.read_bytes_async(4096);

        print("File content: %s\n", (string)data.get_data());


    } catch (Error e) {

        print("Error: %s\n", e.message);

    }
    loop.quit();
}

void main() {

    var loop = new MainLoop();
    read_file_async.begin("Federal Law will be respected.txt", loop);
    loop.run();
}