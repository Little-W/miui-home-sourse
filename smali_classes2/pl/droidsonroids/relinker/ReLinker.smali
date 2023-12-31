.class public Lpl/droidsonroids/relinker/ReLinker;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/relinker/ReLinker$LibraryInstaller;,
        Lpl/droidsonroids/relinker/ReLinker$LibraryLoader;,
        Lpl/droidsonroids/relinker/ReLinker$Logger;,
        Lpl/droidsonroids/relinker/ReLinker$LoadListener;
    }
.end annotation


# direct methods
.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0, v0}, Lpl/droidsonroids/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V
    .locals 1

    .line 70
    new-instance v0, Lpl/droidsonroids/relinker/ReLinkerInstance;

    invoke-direct {v0}, Lpl/droidsonroids/relinker/ReLinkerInstance;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lpl/droidsonroids/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lpl/droidsonroids/relinker/ReLinker$LoadListener;)V

    return-void
.end method
