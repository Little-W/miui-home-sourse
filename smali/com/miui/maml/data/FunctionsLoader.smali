.class public Lcom/miui/maml/data/FunctionsLoader;
.super Ljava/lang/Object;
.source "FunctionsLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .locals 0

    .line 8
    invoke-static {}, Lcom/miui/maml/data/BaseFunctions;->load()V

    .line 9
    invoke-static {}, Lcom/miui/maml/data/StringFunctions;->load()V

    .line 10
    invoke-static {}, Lcom/miui/maml/data/FormatFunctions;->load()V

    return-void
.end method
