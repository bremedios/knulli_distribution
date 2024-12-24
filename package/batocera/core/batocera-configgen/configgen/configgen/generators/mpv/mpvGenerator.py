from __future__ import annotations

from pathlib import Path
from typing import TYPE_CHECKING

from ... import Command
from ...controller import generate_sdl_game_controller_config, write_sdl_controller_db
from ..Generator import Generator

if TYPE_CHECKING:
    from ...types import HotkeysContext


class MpvGenerator(Generator):

    def getHotkeysContext(self) -> HotkeysContext:
        return {
            "name": "shell",
            "keys": { "exit": ["KEY_LEFTSHIFT", "KEY_Q"] }
        }

    def generate(self, system, rom, playersControllers, metadata, guns, wheels, gameResolution):
        rom_path = Path(rom)

        commandArray = [system.config["emulator"], rom_path, "--fs"]
        return Command.Command(array=commandArray)

    def getMouseMode(self, config, rom):
        return True
