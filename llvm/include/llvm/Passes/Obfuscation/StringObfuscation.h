// LLVM include
#include "llvm/Pass.h"

namespace llvm {
    class IStringObfuscation: public ModulePass {
    public:
        IStringObfuscation(char &pid) : ModulePass(pid) {}
        virtual bool runOnModule(Module &M) override {}
    };

    IStringObfuscation&& createStringObfuscation(bool flag);
}
