/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
const numberNft = []; //Holds then Variables 

function mintNFT(_name, _eyeColor, _shirtType, _bling) {
  let mintedNFT = {
    "name" : _name,
    "eyeColor" : _eyeColor,
    "shirtType": _shirtType,
    "bling" : _bling
  }

  numberNft.push(mintedNFT); // Adds the Nft's Data to 
  console.log("Minted: "+ _name);
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
   for (let i = 0; i < numberNft.length; i++) {
      console.log("ID: " + (i + 1));
      console.log(" Name: "+ numberNft[i].name);
      console.log("EyeColor: " + numberNft[i].eyeColor);
      console.log("hirtType : " + numberNft[i].shirtType);
      console.log("Bling: " + numberNft[i].bling + "\n");
   }
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
   console.log("\n Total number of NFT: "+ numberNft.length);
}
// call your functions below this line
mintNFT("Nicole", "Blue", "Blue shirt", "Gold Chain");
mintNFT("Mox", "Brown", "Grey shirt", "Pearl Chain");
mintNFT("Pasta", "Red", "Red hoodie", "Diamond Chain");
 listNFTs();
 getTotalSupply();


