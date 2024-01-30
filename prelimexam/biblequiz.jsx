function True() {
    return (
        <div>
            <h3>The Bible consists of the Old and New Testaments.</h3>
            <h4 className="correct">Correct!</h4>
            <h3>Mosses led the Israelites out of Egypt.</h3>
            <h4 className="correct">Correct!</h4>
            <h3>The Sermon on the Mount is found in the Book of Luke.</h3>
            <h4 className="incorrect">Incorrect!</h4>
        </div>
    );
}

function False() {
    return (
        <div>
            <h3>The Bible consists of the Old and New Testaments.</h3>
            <h3>Mosses led the Israelites out of Egypt.</h3>
            <h3>The Sermon on the Mount is found in the Book of Luke.</h3>
        </div>
    );
}

function TrueOrFalse(props) {
    const isTrue = props.isTrue;
    if (isTrue) {
        return (
            <True />
        );
    }
    return (
        <False />
    );
}


export default function Result() {
    return (
        <div>
            <TrueOrFalse isTrue={true}
            />
        </div>
    );
}
