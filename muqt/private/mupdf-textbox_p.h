#ifndef MUPDF_TEXTBOX_P_H
#define MUPDF_TEXTBOX_P_H

extern "C" {
#include <mupdf/fitz.h>
}

namespace MuPDF
{

class TextBoxPrivate
{
public:
    TextBoxPrivate(fz_context * context, fz_stext_span *ts)
        : ctx(context), text_span(ts)
    {

    }

    fz_stext_span *text_span;
    fz_context * ctx;
};

} // end namespace MuPDF

#endif // end MUPDF_TEXTBOX_P_H
