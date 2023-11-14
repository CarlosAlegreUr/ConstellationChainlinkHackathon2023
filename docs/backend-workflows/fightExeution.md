# Fight Execution - Workflow 🌊🦭🌊

1️⃣ After the matchmaking is done `FightsMatchmaker` calls `FightsExecutor`.

2️⃣ `FightsExecutor` gathers NFTs information from the `NFTContract` or the `NFTBarracks` and calls ChainlinkFunctions with
the default fight prompt.

3️⃣ A `DON` will receive the deno ("javascript") code and execute an API call to OpenAI-ChatPGT to simulate the fight. Two stories will be gaenerated, 1 where one player wins and another where the other player wins.

4️⃣ The `DON` will return the result of the fight to `FightsExecutor`.

5️⃣ The stories generated by ChatGPT will be emitted as an event. `TheGraph` will register them. A hash of them will be stored as their ID. The user will se in the font-end somehting like: Two alternative futures are being decided by quantum fluctuations... In the same transaction a VRF request is sent.

6️⃣ A winner will be generated via VRF. (50% chance of winning so far). (TODO: implement mechanics that dynamically adjust the chance of winning according to NFTs and players)

7️⃣ The winner decided by VRF will receive the bets both players sent and he will be marked as winner of that fight. The front-end will react to the story ID who won and declare show the winner.

[Next: Workflow of fight automation](./fightAutomation.md)

---