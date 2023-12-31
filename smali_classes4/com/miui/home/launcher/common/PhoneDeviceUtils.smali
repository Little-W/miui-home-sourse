.class public Lcom/miui/home/launcher/common/PhoneDeviceUtils;
.super Ljava/lang/Object;
.source "PhoneDeviceUtils.java"


# static fields
.field public static final DANDELION_SERIES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOG_SERIES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->FOG_SERIES:Landroid/util/ArraySet;

    .line 13
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "dandelion"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "angelica"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "angelican"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "cattail"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "angelicain"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->FOG_SERIES:Landroid/util/ArraySet;

    const-string v1, "3811727de5b0ddf6ae30defe2ca4d2c2"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->FOG_SERIES:Landroid/util/ArraySet;

    const-string v1, "7e25b972e192b01004b62346ee9975a5"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->FOG_SERIES:Landroid/util/ArraySet;

    const-string v1, "23678db5efde9ab46bce8c23a6d91b50"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->FOG_SERIES:Landroid/util/ArraySet;

    const-string v1, "2b82477bcccc369d9d8ed30bb1200803"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
