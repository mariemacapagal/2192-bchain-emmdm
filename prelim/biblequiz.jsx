function showTrue() {
    return (
        <h3>The Bible consists of the Old and New Testaments.</h3>
        <h4 class="correct">Correct!</h4>
        <h3>Mosses led the Israelites out of Egypt.</h3>
        <h4 class="correct">Correct!</h4>
        <h3>The Sermon on the Mount is found in the Book of Luke.</h3>
        <h4 class="incorrect">Incorrect!<h4>
    );
}

function showFalse() {
    return (
        <h3>The Bible consists of the Old and New Testaments.</h3>
        <h3>Mosses led the Israelites out of Egypt.</h3>
        <h3>The Sermon on the Mount is found in the Book of Luke.</h3>
        )
}

function TrueOrFalse(props) {
    const isTrue = props.isTrue;
    if (isTrue) {
        return (
            <showTrue />
        );
    }
    return (
        <showFalse />
    );
}


export default function Result() {
    return (
        <div>
            <TrueOrFalse isTrue={false}
            />
        </div>
    );
}