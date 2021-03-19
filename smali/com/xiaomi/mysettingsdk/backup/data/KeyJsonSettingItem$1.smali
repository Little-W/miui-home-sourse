.class final Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem$1;
.super Ljava/lang/Object;
.source "KeyJsonSettingItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;->fillFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;
    .locals 0

    .line 53
    new-array p1, p1, [Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem$1;->newArray(I)[Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;

    move-result-object p1

    return-object p1
.end method
