.class final Lpl/droidsonroids/relinker/SystemLibraryLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public loadPath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method public mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "lib"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".so"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public supportedAbis()[Ljava/lang/String;
    .locals 3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length p0, p0

    if-lez p0, :cond_0

    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {p0}, Lpl/droidsonroids/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, p0, v0

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v0, p0, v1

    return-object p0

    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public unmapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x3

    sub-int/2addr p0, v0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
