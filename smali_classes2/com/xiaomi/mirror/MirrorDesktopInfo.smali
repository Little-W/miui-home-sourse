.class public Lcom/xiaomi/mirror/MirrorDesktopInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mirror/MirrorDesktopInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DESKTOP_HEIGHT:Ljava/lang/String; = "desktop_height"

.field public static final KEY_DESKTOP_IS_SHOW:Ljava/lang/String; = "desktop_is_show"

.field public static final KEY_DESKTOP_ORIENTATION:Ljava/lang/String; = "desktop_orientation"

.field public static final KEY_DESKTOP_SEAT:Ljava/lang/String; = "desktop_seat"

.field public static final KEY_DESKTOP_WIDTH:Ljava/lang/String; = "desktop_width"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/mirror/MirrorDesktopInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/mirror/MirrorDesktopInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getDesktopHeight()I
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "desktop_height"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDesktopOrientation()I
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "desktop_orientation"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDesktopSeat()I
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "desktop_seat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDesktopWidth()I
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "desktop_width"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isShow()Z
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    const-string v0, "desktop_is_show"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorDesktopInfo{Orientation ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorDesktopInfo;->getDesktopOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "width ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorDesktopInfo;->getDesktopWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "height ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorDesktopInfo;->getDesktopHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "seat ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorDesktopInfo;->getDesktopSeat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "isShow ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorDesktopInfo;->isShow()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorDesktopInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
