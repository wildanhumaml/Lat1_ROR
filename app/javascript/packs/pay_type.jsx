import React from 'react'

class PayTypeSelector extends React.Component {
	onPayTypeSelected(event) {
		console.log(event.target.value);
		this.state = { selectedPayType: null };
	}
}