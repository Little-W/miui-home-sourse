.class public final Lcom/miui/home/launcher/DeviceProfile$Builder;
.super Ljava/lang/Object;
.source "DeviceProfile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dpc:Lcom/miui/home/launcher/DeviceConfig;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->context:Landroid/content/Context;

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenWidth:I

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenHeight:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/miui/home/launcher/DeviceProfile;
    .locals 5

    .line 38
    new-instance v0, Lcom/miui/home/launcher/DeviceProfile;

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenWidth:I

    iget v2, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenHeight:I

    iget-object v3, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->dpc:Lcom/miui/home/launcher/DeviceConfig;

    if-nez v3, :cond_0

    const-string v4, "dpc"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/home/launcher/DeviceProfile;-><init>(IILcom/miui/home/launcher/DeviceConfig;)V

    return-object v0
.end method

.method public final setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;
    .locals 1

    const-string v0, "deviceConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->dpc:Lcom/miui/home/launcher/DeviceConfig;

    return-object p0
.end method

.method public final setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;
    .locals 0

    .line 42
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenWidth:I

    .line 43
    iput p2, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenHeight:I

    return-object p0
.end method
