/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

package it.bz.opendatahub.alpinebits.validation.schema.common.inventory;

import it.bz.opendatahub.alpinebits.validation.ErrorMessage;
import it.bz.opendatahub.alpinebits.validation.Names;
import it.bz.opendatahub.alpinebits.validation.NullValidationException;
import it.bz.opendatahub.alpinebits.validation.SimpleValidationPath;
import it.bz.opendatahub.alpinebits.validation.ValidationException;
import it.bz.opendatahub.alpinebits.validation.ValidationPath;
import it.bz.opendatahub.alpinebits.xml.schema.ota.FacilityInfoType;
import org.testng.annotations.Test;

/**
 * Abstract tests for {@link FacilityInfoType} validator.
 */
public abstract class AbstractFacilityInfoValidatorTest {

    protected static final ValidationPath VALIDATION_PATH = SimpleValidationPath.fromPath(Names.FACILITY_INFO);

    @Test
    public void testValidate_ShouldThrow_WhenFacilityInfoIsNull() {
        validateAndAssert(NullValidationException.class, ErrorMessage.EXPECT_FACILITY_INFO_TO_BE_NOT_NULL);
    }

    protected abstract void validateAndAssert(Class<? extends ValidationException> exceptionClass, String errorMessage);

}