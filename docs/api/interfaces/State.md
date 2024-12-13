[@ai16z/eliza v0.1.4-alpha.3](../index.md) / State

# Interface: State

Represents the current state/context of a conversation

## Indexable

 \[`key`: `string`\]: `unknown`

## Properties

### userId?

> `optional` **userId**: \`$\{string\}-$\{string\}-$\{string\}-$\{string\}-$\{string\}\`

ID of user who sent current message

#### Defined in

packages/core/src/types.ts:232

***

### agentId?

> `optional` **agentId**: \`$\{string\}-$\{string\}-$\{string\}-$\{string\}-$\{string\}\`

ID of agent in conversation

#### Defined in

packages/core/src/types.ts:235

***

### bio

> **bio**: `string`

Agent's biography

#### Defined in

packages/core/src/types.ts:238

***

### lore

> **lore**: `string`

Agent's background lore

#### Defined in

packages/core/src/types.ts:241

***

### messageDirections

> **messageDirections**: `string`

Message handling directions

#### Defined in

packages/core/src/types.ts:244

***

### postDirections

> **postDirections**: `string`

Post handling directions

#### Defined in

packages/core/src/types.ts:247

***

### roomId

> **roomId**: \`$\{string\}-$\{string\}-$\{string\}-$\{string\}-$\{string\}\`

Current room/conversation ID

#### Defined in

packages/core/src/types.ts:250

***

### agentName?

> `optional` **agentName**: `string`

Optional agent name

#### Defined in

packages/core/src/types.ts:253

***

### senderName?

> `optional` **senderName**: `string`

Optional message sender name

#### Defined in

packages/core/src/types.ts:256

***

### actors

> **actors**: `string`

String representation of conversation actors

#### Defined in

packages/core/src/types.ts:259

***

### actorsData?

> `optional` **actorsData**: [`Actor`](Actor.md)[]

Optional array of actor objects

#### Defined in

packages/core/src/types.ts:262

***

### goals?

> `optional` **goals**: `string`

Optional string representation of goals

#### Defined in

packages/core/src/types.ts:265

***

### goalsData?

> `optional` **goalsData**: [`Goal`](Goal.md)[]

Optional array of goal objects

#### Defined in

packages/core/src/types.ts:268

***

### recentMessages

> **recentMessages**: `string`

Recent message history as string

#### Defined in

packages/core/src/types.ts:271

***

### recentMessagesData

> **recentMessagesData**: [`Memory`](Memory.md)[]

Recent message objects

#### Defined in

packages/core/src/types.ts:274

***

### actionNames?

> `optional` **actionNames**: `string`

Optional valid action names

#### Defined in

packages/core/src/types.ts:277

***

### actions?

> `optional` **actions**: `string`

Optional action descriptions

#### Defined in

packages/core/src/types.ts:280

***

### actionsData?

> `optional` **actionsData**: [`Action`](Action.md)[]

Optional action objects

#### Defined in

packages/core/src/types.ts:283

***

### actionExamples?

> `optional` **actionExamples**: `string`

Optional action examples

#### Defined in

packages/core/src/types.ts:286

***

### providers?

> `optional` **providers**: `string`

Optional provider descriptions

#### Defined in

packages/core/src/types.ts:289

***

### responseData?

> `optional` **responseData**: [`Content`](Content.md)

Optional response content

#### Defined in

packages/core/src/types.ts:292

***

### recentInteractionsData?

> `optional` **recentInteractionsData**: [`Memory`](Memory.md)[]

Optional recent interaction objects

#### Defined in

packages/core/src/types.ts:295

***

### recentInteractions?

> `optional` **recentInteractions**: `string`

Optional recent interactions string

#### Defined in

packages/core/src/types.ts:298

***

### formattedConversation?

> `optional` **formattedConversation**: `string`

Optional formatted conversation

#### Defined in

packages/core/src/types.ts:301

***

### knowledge?

> `optional` **knowledge**: `string`

Optional formatted knowledge

#### Defined in

packages/core/src/types.ts:304

***

### knowledgeData?

> `optional` **knowledgeData**: [`KnowledgeItem`](../type-aliases/KnowledgeItem.md)[]

Optional knowledge data

#### Defined in

packages/core/src/types.ts:306
