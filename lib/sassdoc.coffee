SassdocView = require './sassdoc-view'
{CompositeDisposable} = require 'atom'

module.exports = Sassdoc =
  sassdocView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @sassdocView = new SassdocView(state.sassdocViewState)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'sassdoc:toggle': => @toggle()

  deactivate: ->

  serialize: ->

  toggle: ->
