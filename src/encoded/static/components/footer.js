/** @jsx React.DOM */
'use strict';
var React = require('react');

var Footer = React.createClass({
    shouldComponentUpdate: function (nextProps, nextState) {
        return false;
    },

    render: function() {
        console.log('render footer');
        return (
            <footer id="page-footer">
                <div className="container">
                    <div id="footer-links">
                        <ul>
                            <li><a href="/"><img src="/static/img/sgd-logo-small.png" alt="SGD" id="sgd-logo" /></a></li>
                            <li><a href="mailto:sgd-help@lists.stanford.edu">Contact</a></li>
                            <li><a href="http://www.stanford.edu/site/terms.html">Terms of Use</a></li>
                            <li>&copy;2013. Stanford University.</li>
                        </ul>
                    </div>
                    <div id="footer-logos">
                        <ul>

                            
                            <li><a href="http://www.stanford.edu"><img src="/static/img/su-logo-white.png" alt="Stanford University" id="su-logo" /></a></li>

                        </ul>
                    </div>
                </div>
            </footer>
        );
    }
});

module.exports = Footer;
