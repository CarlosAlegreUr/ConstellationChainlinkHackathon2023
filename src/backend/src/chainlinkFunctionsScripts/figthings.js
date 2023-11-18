// crear a partir de esto 'un template' que se completará js

const gptPrompt = ```
Here are 2 characters:

- CHARACTER 1:
    - Name: A_NAME
    - Race: WRITE_ANYTHING_YOU_CAN_IMAGINE
    - Weapon: WRITE_ANYTHING_YOU_CAN_IMAGINE
    - Special skill: WRITE_ANYTHING_YOU_CAN_IMAGINE
    - Fear: WRITE_ANYTHING_YOU_CAN_IMAGINE

- CHARACTER 2:
    - Name: A_NAME
    - Race: WRITE_ANYTHING_YOU_CAN_IMAGINE
    - Weapon: WRITE_ANYTHING_YOU_CAN_IMAGINE
    - Special skill: WRITE_ANYTHING_YOU_CAN_IMAGINE
    - Fear: WRITE_ANYTHING_YOU_CAN_IMAGINE

Take a deep breath and write a 2 super interesting stories.
These 2 stories describe a duel involving this 2 characters.
In 1 of the fights CHARACTER 1 wins and in the other CHARACTER 2 wins.
The stories musts be at most 6 lines of length. 

```;

const postData = {
  model: "gpt-3.5-turbo",
  messages: [{ role: "user", content: gptPrompt }],
  temperature: 0,
};

const openAIResponse = await Functions.makeHttpRequest({
  url: "https://api.openai.com/v1/chat/completions",
  method: "POST",
  headers: {
    Authorization: `Bearer ${secrets.apiKey}`,
    "Content-Type": "application/json",
  },
  data: postData,
});

if (openAIResponse.error) {
  throw new Error(JSON.stringify(openAIResponse));
}

const result = openAIResponse.data.choices[0].message.content;

// return the two stories

console.log(result);
return Functions.encodeString(result);