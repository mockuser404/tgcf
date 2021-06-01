import logging
from typing import Dict, Optional

from pydantic import BaseModel  # pylint: disable=no-name-in-module

from tgcf.plugins import TgcfMessage, TgcfPlugin


class Replace(BaseModel):
    text: Optional[Dict[str, str]] = {}


class TgcfReplace(TgcfPlugin):
    id_ = "replace"

    def __init__(self, data):
        self.replace = Replace(**data)
        logging.info(self.replace)

    def modify(self, tm: TgcfMessage):
        msg_text: str = tm.text
        if not msg_text:
            return tm
        for original, new in self.replace.text.items():
            msg_text = msg_text.replace(original, new)
        tm.text = msg_text
        return tm
