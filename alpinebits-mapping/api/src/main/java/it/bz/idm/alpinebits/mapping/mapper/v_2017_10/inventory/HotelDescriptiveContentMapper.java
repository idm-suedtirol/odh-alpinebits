/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

package it.bz.idm.alpinebits.mapping.mapper.v_2017_10.inventory;

import it.bz.idm.alpinebits.mapping.entity.inventory.HotelDescriptiveContent;
import it.bz.idm.alpinebits.xml.schema.v_2017_10.OTAHotelDescriptiveContentNotifRQ;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * Convert between AlpineBits HotelDescriptiveContent
 * (Inventory) and {@link HotelDescriptiveContent} objects.
 */
@Mapper(uses = {GuestRoomMapper.class})
public interface HotelDescriptiveContentMapper {

    @Mapping(target = "guestRooms", source = "facilityInfo.guestRooms.guestRooms")
    HotelDescriptiveContent toHotelDescriptiveContent(OTAHotelDescriptiveContentNotifRQ
                                                              .HotelDescriptiveContents
                                                              .HotelDescriptiveContent hotelDescriptiveContent);

    @InheritInverseConfiguration
    @Mapping(target = "affiliationInfo", ignore = true)
    @Mapping(target = "contactInfos", ignore = true)
    @Mapping(target = "hotelInfo", ignore = true)
    @Mapping(target = "policies", ignore = true)
    @Mapping(target = "hotelCityCode", ignore = true)
    OTAHotelDescriptiveContentNotifRQ
            .HotelDescriptiveContents
            .HotelDescriptiveContent toOTAHotelDescriptiveContent(HotelDescriptiveContent hotelDescriptiveContent);


}