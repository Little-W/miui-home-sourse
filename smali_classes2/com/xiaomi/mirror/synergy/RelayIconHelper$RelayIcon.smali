.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelayIcon"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final description:Ljava/lang/String;

.field private final isSupportHandoff:Z

.field private final packageName:Ljava/lang/String;

.field private final remoteDeviceId:Ljava/lang/String;

.field private final remoteDeviceName:Ljava/lang/String;

.field private final remoteDeviceType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    iput p5, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceType:I

    iput-object p6, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteDeviceType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceType:I

    return p0
.end method

.method public isSupportHandoff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff:Z

    return p0
.end method
