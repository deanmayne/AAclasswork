import React from 'react';
import Header from './header';

class Tabs extends React.Component {
    constructor(props){
        super(props);
        this.state = {selectedTab: 0}

    }

    tabInfo(){
        this.props.tabInfo.map((tab, idx) => {
            return <Header key = {idx}
                            title = {tab.title}
                            content = {tab.content} />
        })
    }

    render() {
        return(
            this.tabInfo.bind(this)

        );
    }

}

export default Tabs;




// const JobIndex = (props) => {
//     // props.listings = [jobs]
//     const listings = props.listings.map((listing, idx) => {
//         return <JobIndexItem key={idx}
//             company={listing.company}
//             title={listing.title}
//             type={listing.type}
//             location={listing.location}
//         />
//     });

//     return (
//         <ul>
//             {/* {props.listings.map( listing => {
//         return (
//           <li>{listing.company}</li>
//         )
//       })} */}
//             {listings}
//         </ul>
//     )
// };