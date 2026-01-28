#include <iostream>
#include <cstdlib> // Para system()

int main() {
    std::cout << "Launching Windows XP Simulation...\n";

    // Caminho para o arquivo HTML
    std::string path = "index.html";

    // Comando para abrir o arquivo no navegador padrão
#if defined(_WIN32) || defined(_WIN64)
    std::string command = "start " + path;
#elif defined(__APPLE__)
    std::string command = "open " + path;
#else // Linux/Unix
    std::string command = "xdg-open " + path;
#endif

    system(command.c_str());

    std::cout << "Simulation launched!\n";
    return 0;
}