.class final Lcom/miui/home/launcher/model/LoaderCursor$1;
.super Ljava/util/HashMap;
.source "LoaderCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/model/LoaderCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "com.android.browser"

    const-string v1, "com.mi.globalbrowser"

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/model/LoaderCursor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.android.calendar"

    const-string v1, "com.xiaomi.calendar"

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/model/LoaderCursor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
