class NgListsController < ApplicationController
  def normal
    @desirable_reporters   = Reporter.includes(:medium)
                               .where('desirability >= ?', Reporter.desirabilities[:somewhat])
                               .order(`reporter.desirability DESC,
                                       media.furigana        ASC,
                                       media.id              ASC,
                                       reporter.furigana     ASC`)
    @undesirable_reporters = Reporter.includes(:medium)
                               .where('desirability <= ?', Reporter.desirabilities[:not_very])
                               .order(`reporter.desirability ASC,
                                       media.furigana        ASC,
                                       media.id              ASC,
                                       reporter.furigana     ASC`)
  end
end
