---
---
(($) ->

  $.fn.readingTime = (options) ->
    `var minShortForm`
    `var lessThanAMinute`
    `var minShortForm`
    `var lessThanAMinute`
    `var minShortForm`
    `var lessThanAMinute`
    `var minShortForm`
    `var lessThanAMinute`
    `var minShortForm`
    `var lessThanAMinute`
    `var minShortForm`
    `var lessThanAMinute`
    `var minShortForm`
    `var lessThanAMinute`
    `var minShortForm`
    `var lessThanAMinute`
    #return if no element was bound
    #so chained events can continue
    if !@length
      return this
    #define default parameters
    defaults = 
      readingTimeTarget: '.eta'
      wordCountTarget: null
      wordsPerMinute: 270
      round: true
      lang: 'en'
      lessThanAMinuteString: ''
      prependTimeString: ''
      prependWordString: ''
      remotePath: null
      remoteTarget: null
    #define plugin
    plugin = this
    #define element
    el = $(this)
    #merge defaults and options
    plugin.settings = $.extend({}, defaults, options)
    #define vars
    readingTimeTarget = plugin.settings.readingTimeTarget
    wordCountTarget = plugin.settings.wordCountTarget
    wordsPerMinute = plugin.settings.wordsPerMinute
    round = plugin.settings.round
    lang = plugin.settings.lang
    lessThanAMinuteString = plugin.settings.lessThanAMinuteString
    prependTimeString = plugin.settings.prependTimeString
    prependWordString = plugin.settings.prependWordString
    remotePath = plugin.settings.remotePath
    remoteTarget = plugin.settings.remoteTarget
    #if lang is set to italian
    if lang == 'it'
      lessThanAMinute = lessThanAMinuteString or 'Meno di un minuto'
      minShortForm = 'min'
      #if lang is set to french
    else if lang == 'fr'
      lessThanAMinute = lessThanAMinuteString or 'Moins d\'une minute'
      minShortForm = 'min'
      #if lang is set to german  
    else if lang == 'de'
      lessThanAMinute = lessThanAMinuteString or 'Weniger als eine Minute'
      minShortForm = 'min'
      #if lang is set to spanish
    else if lang == 'es'
      lessThanAMinute = lessThanAMinuteString or 'Menos de un minuto'
      minShortForm = 'min'
      #if lang is set to dutch
    else if lang == 'nl'
      lessThanAMinute = lessThanAMinuteString or 'Minder dan een minuut'
      minShortForm = 'min'
      #if lang is set to slovak
    else if lang == 'sk'
      lessThanAMinute = lessThanAMinuteString or 'Menej než minútu'
      minShortForm = 'min'
      #if lang is set to czech
    else if lang == 'cz'
      lessThanAMinute = lessThanAMinuteString or 'Méně než minutu'
      minShortForm = 'min'
      #if lang is set to Hungarian
    else if lang == 'hu'
      lessThanAMinute = lessThanAMinuteString or 'Kevesebb mint egy perc'
      minShortForm = 'perc'
      #default lang is english
    else
      lessThanAMinute = lessThanAMinuteString or 'Less than a minute'
      minShortForm = 'min'

    setTime = (text) ->
      `var readingTimeMinutes`
      #split text by spaces to define total words
      totalWords = text.trim().split(/\s+/g).length
      #define words per second based on words per minute (wordsPerMinute)
      wordsPerSecond = wordsPerMinute / 60
      #define total reading time in seconds
      totalReadingTimeSeconds = totalWords / wordsPerSecond
      #define reading time in minutes
      #if round is set to true
      if round == true
        readingTimeMinutes = Math.round(totalReadingTimeSeconds / 60)
        #if round is set to false
      else
        readingTimeMinutes = Math.floor(totalReadingTimeSeconds / 60)
      #define remaining reading time seconds
      readingTimeSeconds = Math.round(totalReadingTimeSeconds - (readingTimeMinutes * 60))
      #if round is set to true
      if round == true
        #if minutes are greater than 0
        if readingTimeMinutes > 0
          #set reading time by the minute
          $(readingTimeTarget).text prependTimeString + readingTimeMinutes + ' ' + minShortForm
        else
          #set reading time as less than a minute
          $(readingTimeTarget).text prependTimeString + lessThanAMinute
        #if round is set to false	
      else
        #format reading time
        readingTime = readingTimeMinutes + ':' + readingTimeSeconds
        #set reading time in minutes and seconds
        $(readingTimeTarget).text prependTimeString + readingTime
      #if word count container isn't blank or undefined
      if wordCountTarget != '' and wordCountTarget != undefined
        #set word count
        $(wordCountTarget).text prependWordString + totalWords
      return

    #for each element
    el.each ->
      #if remotePath and remoteTarget aren't null
      if remotePath != null and remoteTarget != null
        #get contents of remote file
        $.get remotePath, (data) ->
          #set time using the remote target found in the remote file
          setTime $('<div>').html(data).find(remoteTarget).text()
          return
      else
        #set time using the targeted element
        setTime el.text()
      return
    return

  return
) jQuery

$('.post-content').readingTime()