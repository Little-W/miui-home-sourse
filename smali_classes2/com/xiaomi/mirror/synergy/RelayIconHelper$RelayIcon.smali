.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelayIcon"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final description:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final remoteDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->remoteDeviceName:Ljava/lang/String;

    return-object v0
.end method
