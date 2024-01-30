import React from 'react';

const ListItem = ({ item, status }) => {
const textColor = status === 'correct' ? 'red' : status === 'incorrect' ? 'pink' : '';

return (
<li style={{ backgroundColor, listStyleType: 'none', padding: '8px', margin: '4px' }}>
{item}
</li>
);
};

const ListComponent = ({ list, listStatus }) => {
return (
<ul>
{list.map((item, index) => (
<ListItem key={index} item={item} status={listStatus[index]} />
))}
</ul>
);
};

const Result = () => {
const myList = ['The Bible consists of the Old and New Testaments.', 'Mosses led the Israelites out of Egypt.', 'The Sermon on the Mount is found in the Book of Luke.'];
const myStatusList = ['correct', 'correct', 'incorrect'];

return (
<div>
<h1>The Bible Quiz</h1>
<ListComponent list={myList} listStatus={myStatusList} />
</div>
);
};

export default BibleQuiz;