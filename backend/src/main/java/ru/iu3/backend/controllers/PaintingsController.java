package ru.iu3.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.iu3.backend.models.Painting;
import ru.iu3.backend.repositories.PaintingRepository;
import ru.iu3.backend.tools.DataValidationException;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class PaintingsController {

    @Autowired
    PaintingRepository paintingRepository;

    @GetMapping("/paintings")
    public Page<Painting> getAllPaintings(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return paintingRepository.findAll(PageRequest.of(page, limit, Sort.by(Sort.Direction.ASC, "name")));
    }

    @GetMapping("/paintings/{id}")
    public ResponseEntity<Painting> getPainting(@PathVariable(value = "id") Long paintingId) throws DataValidationException {
        Painting painting = paintingRepository.findById(paintingId)
                .orElseThrow(() -> new DataValidationException("Painting not found"));

        return ResponseEntity.ok(painting);
    }

    @PostMapping("/paintings")
    public ResponseEntity<Object> createPainting(@Valid @RequestBody Painting painting) throws DataValidationException {
        try {
            Painting newPainting = paintingRepository.save(painting);
            return new ResponseEntity<>(newPainting, HttpStatus.OK);
        } catch (Exception ex) {
            throw new DataValidationException("Unknown error");
        }
    }

    @PostMapping("/deletepaintings")
    public ResponseEntity deletePaintings(@Valid @RequestBody List<Painting> paintings) {
        paintingRepository.deleteAll(paintings);
        return new ResponseEntity(HttpStatus.OK);
    }

    @PutMapping("/paintings/{id}")
    public ResponseEntity<Painting> updatePainting(@PathVariable(value = "id") Long paintingId,
                                                   @Valid @RequestBody Painting paintingDetails) throws DataValidationException {
        try {
            Painting painting = paintingRepository.findById(paintingId)
                    .orElseThrow(() -> new DataValidationException("Painting not found"));

            painting.name = paintingDetails.name;
            painting.artist = paintingDetails.artist;
            painting.museum = paintingDetails.museum;
            painting.year = paintingDetails.year;
            paintingRepository.save(painting);
            return ResponseEntity.ok(painting);
        } catch (Exception ex) {
            throw new DataValidationException("Unknown error");
        }
    }
}
