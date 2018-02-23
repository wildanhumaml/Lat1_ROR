import React 			from 'react'
import ReactDOM			from 'react-dom'
import PayTypeSelector	from 'PayTypeSelector'


document.addEventListener('DOMContentLoaded', function() {
	var element = document.getElementById("pay-type-component");
	ReactDOM.render(<PayTypeSelector />, element);
});

// class PayTypeSelector extends React.Component {
// 	onPayTypeSelected(event) {
// 		console.log(event.target.value);
// 		this.state = { selectedPayType: null };
// 	}
// }