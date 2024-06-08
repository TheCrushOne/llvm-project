// LLVM include
#include "llvm/Pass.h"

namespace llvm {
    class IStringObfuscation: public llvm::ModulePass {
    public:
        virtual bool runOnModule(Module &M) {}
    };

    IStringObfuscation&& createStringObfuscation(bool flag);
}
