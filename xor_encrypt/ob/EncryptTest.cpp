#include "XorEncryptor.h"

class EncryptorTest
{
public:
	void run()
	{
		XorEncryptor xe;
		const string plain="To be, or not to be, that is the question:\nWhether 'tis Nobler in the mind to suffer\nThe Slings and Arrows of outrageous Fortune,\nOr to take Arms against a Sea of troubles,\nAnd by opposing end them: to die, to sleep\nNo more; and by a sleep, to say we end\nThe Heart-ache, and the thousand Natural shocks\nThat Flesh is heir to? 'Tis a consummation\nDevoutly to be wished. To die, to sleep,\nTo sleep, perchance to Dream; aye, there's the rub,\nFor in that sleep of death, what dreams may come,\nWhen we have shuffled off this mortal coil,\nMust give us pause. There's the respect\nThat makes Calamity of so long life:\nFor who would bear the Whips and Scorns of time,\nThe Oppressor's wrong, the poor man's Contumely,\nThe pangs of disprized Love, the Law's delay,\nThe insolence of Office, and the Spurns\nThat patient merit of the unworthy takes,\nWhen he himself might his Quietus make\nWith a bare Bodkin? Who would these Fardels bear,\nTo grunt and sweat under a weary life,\nBut that the dread of something after death,\nThe undiscovered Country, from whose bourn\nNo Traveller returns, Puzzles the will,\nAnd makes us rather bear those ills we have,\nThan fly to others that we know not of.\nThus Conscience does make Cowards of us all,\nAnd thus the Native hue of Resolution\nIs sicklied o'er, with the pale cast of Thought,\nAnd enterprises of great pith and moment,\nWith this regard their Currents turn away,\nAnd lose the name of Action. Soft you now,\nThe fair Ophelia? Nymph, in thy Orisons\nBe all my sins remembered.";
		string cipher=xe.encrypt(plain, "key");
		for(int i=0; i<cipher.size(); i++)
			cout<<(int)cipher[i]<<',';
	}
};
