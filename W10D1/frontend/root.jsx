import React from 'react';
import Clock from './clock';
import Tabs from './tabs';

export default function Root() {
    const tabInfo = [{title: 'one', content: 'I am the first'},
        {title: 'two', content: 'Second pane here' },
        {title: 'three', content: 'Third pane here'}
    ]

    return (
        <div>
            <Clock />
            <Tabs tabInfo = {tabInfo}/>
        </div>
    )
}

