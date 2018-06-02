import React from 'react';
import { withRouter } from 'react-router-dom';
import * as Material from 'react-icons/lib/md';

import { ServicesIndexItemLeft, ServicesIndexItemRight, ServicesIndexItemMobile } from './services_index_item';
import HeroCarousel from '../hero/hero_carousel';
import Contact from '../contact/contact';

class ServicesIndex extends React.Component {
    constructor() {
        super();
    }

    componentWillMount() {
        console.log('mounting')
        window.scroll(0, 0);
    }

    componentDidMount() {
        this.props.getAllServices();
        this.props.getAllImageCarousels();
    }

    componentDidUpdate() {
        console.log('updating')
        if (this.props.location.hash.length) {
            const targetOfHash = document.querySelector(this.props.location.hash);
            console.log(targetOfHash)
            if (targetOfHash) {
                targetOfHash.scrollIntoView()
            }
        }
    }

    renderServices() {
        if (this.props.services && this.props.services.length) {
            if (window.innerWidth < 800) {
                return (
                    <React.Fragment>
                        {this.props.services.map(service => {
                            return <ServicesIndexItemMobile key={service.id} service={service} />
                        })}
                    </React.Fragment>
                )
            }
            return (
                <React.Fragment>
                    {this.props.services.map(service => {
                        if (service.id % 2 === 0) {
                            return <ServicesIndexItemLeft key={service.id} service={service} />
                        } else {
                            return <ServicesIndexItemRight key={service.id} service={service} />
                        }
                    })}
                </React.Fragment>
            )
        }
    }

    render() {
        return (
            <React.Fragment>
                <section className="main__meta-container">
                    <div className="services-index__container">
                        {this.renderServices()}
                    </div>
                    <Contact />
                </section>
            </React.Fragment >
        )
    }
}

export default withRouter(ServicesIndex);
