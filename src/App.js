import kirby from './kirby.png';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={kirby} className="App-logo" alt="logo" />
        <p>
          <code>SCOOP BOOP SHOOPITY DOOP</code>
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;