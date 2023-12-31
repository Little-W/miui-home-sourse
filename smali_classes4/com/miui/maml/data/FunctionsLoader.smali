.class public Lcom/miui/maml/data/FunctionsLoader;
.super Ljava/lang/Object;
.source "FunctionsLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .locals 2

    .line 9
    invoke-static {}, Lcom/miui/maml/data/BaseFunctions;->load()V

    .line 10
    invoke-static {}, Lcom/miui/maml/data/StringFunctions;->load()V

    .line 11
    invoke-static {}, Lcom/miui/maml/data/FormatFunctions;->load()V

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 13
    invoke-static {}, Lcom/miui/maml/data/DateFunctions;->load()V

    .line 15
    :cond_0
    invoke-static {}, Lcom/miui/maml/data/JsonFunctions;->load()V

    return-void
.end method
