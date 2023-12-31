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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceProfile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceProfile.kt\ncom/miui/home/launcher/DeviceProfile$Builder\n*L\n1#1,255:1\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private deviceHeight:I

.field private deviceWidth:I

.field private dpc:Lcom/miui/home/launcher/DeviceConfig;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->context:Landroid/content/Context;

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenWidth:I

    .line 52
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenHeight:I

    .line 53
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->deviceWidth:I

    .line 54
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->deviceHeight:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/miui/home/launcher/DeviceProfile;
    .locals 8

    .line 57
    iget-object v6, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->context:Landroid/content/Context;

    if-eqz v6, :cond_1

    new-instance v7, Lcom/miui/home/launcher/DeviceProfile;

    iget v1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenWidth:I

    iget v2, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenHeight:I

    iget v3, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->deviceWidth:I

    iget v4, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->deviceHeight:I

    iget-object v5, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->dpc:Lcom/miui/home/launcher/DeviceConfig;

    if-nez v5, :cond_0

    const-string p0, "dpc"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/DeviceProfile;-><init>(IIIILcom/miui/home/launcher/DeviceConfig;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public final setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;
    .locals 1

    const-string v0, "deviceConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->dpc:Lcom/miui/home/launcher/DeviceConfig;

    return-object p0
.end method

.method public final setDeviceSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;
    .locals 0

    .line 67
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->deviceWidth:I

    .line 68
    iput p2, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->deviceHeight:I

    return-object p0
.end method

.method public final setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;
    .locals 0

    .line 61
    iput p1, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenWidth:I

    .line 62
    iput p2, p0, Lcom/miui/home/launcher/DeviceProfile$Builder;->screenHeight:I

    return-object p0
.end method
