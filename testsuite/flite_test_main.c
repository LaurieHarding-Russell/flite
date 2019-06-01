
#include "flite.h"
cst_voice* register_cmu_us_slt(const char *voxdir);
void unregister_cmu_us_slt(cst_voice *vox);


int main() {
    cst_voice* voice = register_cmu_us_slt(NULL);
    cst_wave* test = flite_text_to_wave("hello world", voice);
    cst_wave_save(test, "hackyHacky.wav", "riff"); // Why no Enum Professor?

    unregister_cmu_us_slt(voice);
    return 0;
}
