package ru.iu3.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.iu3.backend.models.Artist;
import ru.iu3.backend.models.Country;
import ru.iu3.backend.repositories.ArtistRepository;
import ru.iu3.backend.tools.DataValidationException;

import javax.validation.Valid;
import java.util.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class ArtistController {

    @Autowired
    ArtistRepository artistRepository;

    @GetMapping("/artists")
    public Page<Artist> getAllArtists(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return artistRepository.findAll(PageRequest.of(page, limit, Sort.by(Sort.Direction.ASC, "name")));
    }

    @GetMapping("/artists/{id}")
    public ResponseEntity<Artist> getArtist(@PathVariable(value = "id") Long artistId) throws DataValidationException {
        Artist artist = artistRepository.findById(artistId)
                .orElseThrow(() -> new DataValidationException("Artist not found"));

        return ResponseEntity.ok(artist);
    }

    @PostMapping("/artists")
    public ResponseEntity<Object> createArtist(@Valid @RequestBody Artist artist) throws DataValidationException {
        try {
            Artist newArtist = artistRepository.save(artist);
            return new ResponseEntity<>(newArtist, HttpStatus.OK);
        } catch (Exception ex) {
            throw new DataValidationException("Unknown error");
        }
    }

    @PostMapping("/deleteartists")
    public ResponseEntity deleteArtists(@Valid @RequestBody List<Artist> artists) {
        artistRepository.deleteAll(artists);
        return new ResponseEntity(HttpStatus.OK);
    }

    @PutMapping("/artists/{id}")
    public ResponseEntity<Artist> updateArtist(@PathVariable(value = "id") Long artistId,
                                               @Valid @RequestBody Artist artistDetails) throws DataValidationException {
        try {
            Artist artist = artistRepository.findById(artistId)
                    .orElseThrow(() -> new DataValidationException("Artist not found"));

            artist.name = artistDetails.name;
            artist.country = artistDetails.country;
            artist.age = artistDetails.age;
            artistRepository.save(artist);
            return ResponseEntity.ok(artist);
        } catch (Exception ex) {
            throw new DataValidationException("Unknown error");
        }
    }
}
