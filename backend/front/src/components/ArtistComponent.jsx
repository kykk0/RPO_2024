import React, {useEffect, useState} from 'react';
import BackendService from '../services/BackendService';
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import {alertActions} from "../utils/Rdx";
import {connect} from "react-redux";
import {Form} from "react-bootstrap";
import {useNavigate, useParams} from "react-router-dom";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";

const ArtistComponent = props => {
    const params = useParams();
    const [id, setId] = useState(params.id);
    const [name, setName] = useState("");
    const [countryId, setCountryId] = useState("");
    const [age, setAge] = useState("");
    const [countries, setCountries] = useState([]);

    const [hidden, setHidden] = useState(false);
    const navigate = useNavigate();

    useEffect(() => {
        BackendService.retrieveAllCountries(0, 100).then(
            resp => {
                setCountries(resp.data.content);
            }
        ).catch(() => {});

        if (parseInt(id) !== -1) {
            BackendService.retrieveArtist(id)
                .then((resp) => {
                    setName(resp.data.name);
                    setCountryId(resp.data.country ? resp.data.country.id : "");
                    setAge(resp.data.age);
                })
                .catch(() => setHidden(true));
        }
    }, [id]);

    const onSubmit = (event) => {
        event.preventDefault();
        event.stopPropagation();
        let err = null;
        if (!name) err = "Имя художника должно быть указано";
        if (err) props.dispatch(alertActions.error(err));
        let artist = {id, name, country: {id: countryId}, age};

        if (parseInt(artist.id) === -1) {
            BackendService.createArtist(artist)
                .then(() => navigate(`/artists`))
                .catch(() => {});
        } else {
            BackendService.updateArtist(artist)
                .then(() => navigate(`/artists`))
                .catch(() => {});
        }
    }

    if (hidden)
        return null;
    return (
        <div className="m-4">
            <div className="row my-2 mr-0">
                <h3>Художник</h3>
                <button className="btn btn-outline-secondary ml-auto"
                        onClick={() => navigate(`/artists`)}>
                    <FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад
                </button>
            </div>
            <Form onSubmit={onSubmit}>
                <Form.Group>
                    <Form.Label>Имя</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите имя художника"
                        onChange={(e) => {setName(e.target.value)}}
                        value={name}
                        name="name"
                        autoComplete="off"
                    />
                </Form.Group>
                <Form.Group>
                    <Form.Label>Страна</Form.Label>
                    <Form.Control
                        as="select"
                        onChange={(e) => setCountryId(e.target.value)}
                        value={countryId}
                    >
                        <option value="">Выберите страну</option>
                        {countries.map((country) => (
                            <option key={country.id} value={country.id}>
                                {country.name}
                            </option>
                        ))}
                    </Form.Control>
                </Form.Group>
                <Form.Group>
                    <Form.Label>Век</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите век"
                        onChange={(e) => {setAge(e.target.value)}}
                        value={age}
                        name="age"
                        autoComplete="off"
                    />
                </Form.Group>
                <button className="btn btn-outline-secondary" type="submit">
                    <FontAwesomeIcon icon={faSave}/>{' '}
                    Сохранить
                </button>
            </Form>
        </div>
    )
}

export default connect()(ArtistComponent);
