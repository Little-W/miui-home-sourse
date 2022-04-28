.class public Lcom/xiaomi/mirror/RemoteDeviceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONNECT_TYPE_ADVANCED:I = 0x2

.field public static final CONNECT_TYPE_ADVANCED_USER_AWARE:I = 0x6

.field public static final CONNECT_TYPE_BASIC:I = 0x1

.field public static final CONNECT_TYPE_NONE:I = 0x0

.field public static final CONNECT_TYPE_USER_AWARE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field static final KEY_CONNECT_TYPE:Ljava/lang/String; = "connect_type"

.field static final KEY_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_IS_SHOW_MIRROR:Ljava/lang/String; = "is_show_mirror"

.field static final KEY_IS_SUPPORT_SEND_APP:Ljava/lang/String; = "is_support_send_app"

.field static final KEY_LAST_CONNECT_TIMESTAMP:Ljava/lang/String; = "last_connect_timestamp"

.field static final KEY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field static final KEY_PLATFORM:Ljava/lang/String; = "platform"

.field public static final MANUFACTURER_OTHER:Ljava/lang/String; = "other"

.field public static final MANUFACTURER_XIAOMI:Ljava/lang/String; = "xiaomi"

.field public static final PLATFORM_ANDROID_PAD:Ljava/lang/String; = "AndroidPad"

.field public static final PLATFORM_ANDROID_PHONE:Ljava/lang/String; = "AndroidPhone"

.field public static final PLATFORM_WINDOWS:Ljava/lang/String; = "Windows"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/mirror/RemoteDeviceInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/mirror/RemoteDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "platform"

    const-string v2, "AndroidPhone"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "connect_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getConnectType()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "connect_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "last_connect_timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMutableBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowMirror()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "is_show_mirror"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportSendApp()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "is_support_send_app"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
