.class final Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem$1;
.super Ljava/lang/Object;
.source "KeyBinarySettingItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;
    .locals 1

    .line 53
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;->fillFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;
    .locals 0

    .line 48
    new-array p1, p1, [Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem$1;->newArray(I)[Lcom/xiaomi/mysettingsdk/backup/data/KeyBinarySettingItem;

    move-result-object p1

    return-object p1
.end method
