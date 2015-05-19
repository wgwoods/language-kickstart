describe "Kickstart grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-kickstart")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.kickstart")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.kickstart"

  # TODO: yeah add some real tests or something, chump
