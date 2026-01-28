// Simple Windows XP simulation interactions

// Start button click
document.addEventListener("DOMContentLoaded", () => {
    const startButton = document.getElementById("start-button");
    const desktop = document.getElementById("desktop");

    startButton.addEventListener("click", () => {
        alert("Start menu clicked!");
    });

    // Create a sample window when clicked
    startButton.addEventListener("dblclick", () => {
        createWindow("My Computer");
    });
});

// Function to create a draggable window
function createWindow(title) {
    const desktop = document.getElementById("desktop");

    const win = document.createElement("div");
    win.className = "window";
    win.style.top = "50px";
    win.style.left = "50px";

    const header = document.createElement("div");
    header.className = "window-header";
    header.textContent = title;

    const content = document.createElement("div");
    content.className = "window-content";
    content.innerHTML = "<p>Welcome to Windows XP Simulation!</p>";

    win.appendChild(header);
    win.appendChild(content);
    desktop.appendChild(win);

    // Drag functionality
    let isDragging = false;
    let offsetX = 0;
    let offsetY = 0;

    header.addEventListener("mousedown", (e) => {
        isDragging = true;
        offsetX = e.clientX - win.offsetLeft;
        offsetY = e.clientY - win.offsetTop;
    });

    document.addEventListener("mousemove", (e) => {
        if (isDragging) {
            win.style.left = e.clientX - offsetX + "px";
            win.style.top = e.clientY - offsetY + "px";
        }
    });

    document.addEventListener("mouseup", () => {
        isDragging = false;
    });
}