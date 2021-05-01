.class final Lcom/miui/home/launcher/DeviceConfig$1;
.super Ljava/util/HashSet;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

    .line 217
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "mx_telcel"

    .line 218
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DeviceConfig$1;->add(Ljava/lang/Object;)Z

    const-string v0, "lm_cr"

    .line 219
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DeviceConfig$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
