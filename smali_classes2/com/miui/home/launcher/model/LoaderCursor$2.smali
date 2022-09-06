.class Lcom/miui/home/launcher/model/LoaderCursor$2;
.super Ljava/util/HashMap;
.source "LoaderCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/model/LoaderCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

    .line 40
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "com.telcel.contenedor.gui.activities.AppsContainerActivity"

    const-string v1, "com.speedymovil.contenedor.gui.activities.AppsContainerActivity"

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/model/LoaderCursor$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.gameloft.android.gdc.AYCELoadingActivity"

    const-string v1, "com.gameloft.android.gdc.MainActivity"

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/model/LoaderCursor$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
