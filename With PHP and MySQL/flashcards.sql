SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `flashcards` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flashcards`;

CREATE TABLE `dogs` (
  `id` int(11) NOT NULL,
  `name` varchar(31) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dogs` (`id`, `name`, `url`) VALUES
(1, 'German Shepherd', 'http://cdn3-www.dogtime.com/assets/uploads/gallery/german-shepherd-dog-breed-pictures/laying-1.jpg'),
(2, 'Labrador Retriever', 'http://cdn2-www.dogtime.com/assets/uploads/gallery/labrador-retriever-dog-breed-pictures/labrador-retriever-dog-pictures-6.jpg'),
(3, 'Rottweiler', 'https://vetstreet-brightspot.s3.amazonaws.com/93/c9f130a7fb11e0a0d50050568d634f/file/Rottweiler-1-645mk062811.jpg'),
(4, 'Beagle', 'http://cdn2-www.dogtime.com/assets/uploads/gallery/beagle-dog-breed-pictures/1-runforward.jpg'),
(5, 'Bulldog', 'http://cdn3-www.dogtime.com/assets/uploads/gallery/bulldog-dog-breed-pictures/1-threequartersitting.jpg'),
(6, 'Golden Retriever', 'http://cdn2-www.dogtime.com/assets/uploads/gallery/golden-retriever-dogs-and-puppies/golden-retriever-dogs-puppies-6.jpg'),
(7, 'Great Dane', 'https://vetstreet.brightspotcdn.com/dims4/default/ee6ccde/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F5b%2F52%2F49deed4f440ea965d0ff16fca655%2Fgreat-dane-AP-PFYPXJ-645sm12913.jpg'),
(8, 'Poodle', 'http://cdn2-www.dogtime.com/assets/uploads/gallery/poodle-dog-breed-pictures/threequarters-4.jpg'),
(9, 'Doberman Pinscher', 'https://vetstreet.brightspotcdn.com/dims4/default/777afb9/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fcf%2Ff283009e8911e0a2380050568d634f%2Ffile%2FDoberman-2-645mk062111.jpg'),
(10, 'Dachshund', 'https://www.petful.com/wp-content/uploads/2016/12/Dachshund-2.jpg'),
(11, 'Siberian Husky', 'http://cdn3-www.dogtime.com/assets/uploads/gallery/siberian-husky-dog-breed-pictures/siberian-husky-dog-breed-pictures-5.jpg'),
(12, 'Pit Bull', 'http://cdn3-www.dogtime.com/assets/uploads/gallery/pit-bull-dog-breed-pictures/pit-bull-dog-breed-picture-1.jpg'),
(13, 'Boxer', 'http://cdn3-www.dogtime.com/assets/uploads/gallery/boxer-dogs-and-puppies/boxer-dogs-puppies-4.jpg'),
(14, 'English Mastiff', 'https://www.k9rl.com/wp-content/uploads/2016/07/Mastiff-breeds-Old-English-Mastiff-photo.jpg'),
(15, 'Chihuahua', 'http://cdn1-www.dogtime.com/assets/uploads/gallery/chihuahua-dog-breed-pictures/10-face.jpg'),
(16, 'Yorkshire Terrier', 'http://cdn3-www.dogtime.com/assets/uploads/gallery/yorkshireterrier-dog-breed-pictures/8-fly.jpg'),
(17, 'Shih Tzu', 'http://cdn2-www.dogtime.com/assets/uploads/gallery/shih-tzu-dog-breed-pictures/shih-tzu-breed-picture-8.jpg'),
(18, 'Australian Shepherd', 'http://cdn2-www.dogtime.com/assets/uploads/gallery/austalian-shepherd-dog-breed-pictures/10-threequarters.jpg'),
(19, 'Maltese', 'http://cdn1-www.dogtime.com/assets/uploads/gallery/maltese-dog-breed-picture/3-grasstongue.jpg'),
(20, 'Pomeranian', 'http://cdn3-www.dogtime.com/assets/uploads/gallery/pomeranian-dog-breed-pictures/1-layingforward.jpg'),
(21, 'Pekingese', 'http://cdn3-www.dogtime.com/assets/uploads/gallery/pekingese-dog-breed-pictures/3-sidestand.jpg');


ALTER TABLE `dogs`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `dogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
