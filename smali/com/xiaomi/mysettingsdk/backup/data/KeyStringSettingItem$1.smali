.class final Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem$1;
.super Ljava/lang/Object;
.source "KeyStringSettingItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;
    .locals 1

    .line 52
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;->fillFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;
    .locals 0

    .line 47
    new-array p1, p1, [Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem$1;->newArray(I)[Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;

    move-result-object p1

    return-object p1
.end method
