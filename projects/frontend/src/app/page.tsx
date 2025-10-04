export default function Home() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-blue-50 to-indigo-100">
      <div className="text-center space-y-6 p-8">
        <h1 className="text-6xl font-bold text-gray-900">Project Template</h1>
        <p className="text-xl text-gray-600 max-w-2xl">
          A modern full-stack project template with Next.js 15, React 18, FastAPI, and Python 3.13+
        </p>
        <div className="flex gap-4 justify-center pt-6">
          <a
            href="/docs"
            className="px-6 py-3 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition-colors font-semibold"
          >
            View Documentation
          </a>
          <a
            href="https://github.com"
            className="px-6 py-3 bg-gray-800 text-white rounded-lg hover:bg-gray-900 transition-colors font-semibold"
          >
            GitHub
          </a>
        </div>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 pt-12 max-w-4xl">
          <div className="p-6 bg-white rounded-lg shadow-md">
            <h3 className="text-lg font-semibold text-gray-900 mb-2">⚡ Fast Development</h3>
            <p className="text-gray-600">Modern tooling with uv, just, and hot reload</p>
          </div>
          <div className="p-6 bg-white rounded-lg shadow-md">
            <h3 className="text-lg font-semibold text-gray-900 mb-2">🎨 Type Safe</h3>
            <p className="text-gray-600">Full TypeScript and Python type checking</p>
          </div>
          <div className="p-6 bg-white rounded-lg shadow-md">
            <h3 className="text-lg font-semibold text-gray-900 mb-2">🧪 Well Tested</h3>
            <p className="text-gray-600">Pytest and React Testing Library ready</p>
          </div>
        </div>
      </div>
    </div>
  );
}
