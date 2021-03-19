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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    .line 12
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "dandelion"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "angelica"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "angelican"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "cattail"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcom/miui/home/launcher/common/PhoneDeviceUtils;->DANDELION_SERIES:Landroid/util/ArraySet;

    const-string v1, "angelicain"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
