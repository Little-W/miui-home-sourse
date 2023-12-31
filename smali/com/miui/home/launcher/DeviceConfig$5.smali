.class Lcom/miui/home/launcher/DeviceConfig$5;
.super Ljava/util/HashSet;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v0, "tier1"

    .line 279
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DeviceConfig$5;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "tier2"

    .line 280
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DeviceConfig$5;->add(Ljava/lang/Object;)Z

    return-void
.end method
