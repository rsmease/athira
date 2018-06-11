import React from 'react';
import Fade from 'react-reveal';
import PhoneInput from "react-phone-input-auto-format";
import Popup from 'reactjs-popup';
import _ from 'lodash';

class ContactForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      first_name: '',
      last_name: '',
      email_address: '',
      phone_number: '',
      message: '',
      confirmationModalOpen: false
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleInput = this.handleInput.bind(this);
    this.handlePhoneInput = this.handlePhoneInput.bind(this);
    this.closeConfirmationModal = this.closeConfirmationModal.bind(this);
    this.clearForm = this.clearForm.bind(this);
  }

  componentWillMount() {
    this.props.clearVisitorErrors();
    window.scroll(0, 0);
  }

  componentWillUnmount() {
    this.props.clearVisitorErrors();
  }

  closeConfirmationModal() {
    this.setState({ confirmationModalOpen: false })
  }

  handleInput(type) {
    return (e) => {
      this.setState({ [type]: e.target.value });
    };
  }

  handlePhoneInput() {
    this.setState({ phone_number: $('#phone-input').val() })
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.requestToCreateVisitor(this.state)
      .then(() => this.clearForm())
    this.props.clearVisitorErrors();
  }

  clearForm() {
    this.setState(
      {
        first_name: '',
        last_name: '',
        email_address: '',
        phone_number: '',
        message: '',
        confirmationModalOpen: true
      }
    );
  }

  filteredErrors(labelName) {
    return _.uniq(this.props.errors).filter((error) => (
      error.toLowerCase().includes(labelName)
    ));
  }

  showErrors(labelName, displayClass) {
    if (this.props.errors && this.props.errors.length > 0) {
      return (
        this.filteredErrors(labelName).map((error, i) => (
          <span key={i} className={displayClass}>{error}</span>
        ))
      );
    }
  }

  render() {
    return (
      <section className="contact__form--container">
        <h1 className="contact__form--h1">Get in Touch</h1>
        <h2 className="contact__form--h2">Let us know what you're working towards, and we'll be in touch!</h2>
        <form className="contact__form">
          <div className="contact__form--input-pair">
            <div className="contact__form--input-container">
              {this.showErrors("first", "visitor-error")}
              <input
                className="contact__form--input"
                type="text"
                placeholder="First Name"
                value={this.state.first_name}
                onChange={this.handleInput('first_name')}
              />
            </div>

            <div className="contact__form--input-container">
              {this.showErrors("last", "visitor-error")}
              <input
                className="contact__form--input"
                type="text"
                placeholder="Last Name"
                value={this.state.last_name}
                onChange={this.handleInput('last_name')}
              />
            </div>
          </div>
          <div className="contact__form--input-pair">
            <div className="contact__form--input-container">
              {this.showErrors("email", "visitor-error")}
              <input
                className="contact__form--input"
                type="text"
                placeholder="Email Address"
                value={this.state.email_address}
                onChange={this.handleInput('email_address')}
              />
            </div>

            <div className="contact__form--input-container">
              {this.showErrors("phone", "visitor-error")}
              <PhoneInput
                className="contact__form--input"
                id="phone-input"
                type="text"
                placeholder="Phone Number"
                value={this.state.phone_number}
                onKeyUp={this.handlePhoneInput}
              />
            </div>
          </div>
          <div className="contact__form--input-container">
            {this.showErrors("message", "visitor-error")}
            <textarea
              className="contact__form--input contact__form--text-input"
              type="textarea"
              placeholder="message"
              value={this.state.message}
              onChange={this.handleInput('message')}
            />
          </div>
          <Fade up>
            <button className="contact__form--submit-button"
              onClick={this.handleSubmit}>Submit</button>
          </Fade>
          <Popup
            modal
            open={this.state.confirmationModalOpen}
            contentStyle={
              {
                padding: '0',
                border: '0',
                backgroundColor: 'transparent',
                width: '100%',
                display: 'flex',
                flexDirection: 'row',
                justifyContent: 'center'
              }
            }
            closeOnDocumentClick
            onClose={this.closeConfirmationModal}
          >
            <Fade down>
              <div className="contact__form--modal-container">
                <h4 className="contact__form--modal-h4">Thanks!</h4>
                <p className="contact__form--modal-p">We'll reach out to you shortly</p>
              </div>
            </Fade>
          </Popup>
        </form>
      </section>
    )
  }
}

export default ContactForm;
