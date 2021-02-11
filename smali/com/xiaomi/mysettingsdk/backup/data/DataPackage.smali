.class public Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;
.super Ljava/lang/Object;
.source "DataPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DATA_PACKAGE:Ljava/lang/String; = "data_package"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final mDataItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mysettingsdk/backup/data/SettingItem<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mFileItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage$1;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;

    move-result-object p0

    return-object p0
.end method

.method public static fromWrappedBundle(Landroid/os/Bundle;)Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 56
    const-class v0, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "data_package"

    .line 58
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;

    move-result-object p0

    return-object p0
.end method

.method private getDataPackageBundle()Landroid/os/Bundle;
    .locals 4

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    .line 86
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 91
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static getVersionFromBundle(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "version"

    .line 50
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static parseDataPackageBundle(Landroid/os/Bundle;)Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    const-class v0, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 67
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 70
    instance-of v4, v3, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    if-eqz v4, :cond_2

    .line 71
    iget-object v4, v0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    move-object v5, v3

    check-cast v5, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    instance-of v4, v3, Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_1

    .line 74
    iget-object v4, v0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public addAbstractDataItem(Ljava/lang/String;Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mysettingsdk/backup/data/SettingItem<",
            "*>;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addKeyFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    const/high16 v1, 0x10000000

    invoke-static {p2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 106
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;->key:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, p2}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;->setValue(Ljava/lang/Object;)V

    .line 109
    iget-object p2, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;-><init>()V

    .line 117
    iput-object p1, v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;->key:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, p2}, Lcom/xiaomi/mysettingsdk/backup/data/KeyStringSettingItem;->setValue(Ljava/lang/Object;)V

    .line 119
    iget-object p2, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public appendToWrappedBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->getDataPackageBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data_package"

    .line 143
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/mysettingsdk/backup/data/SettingItem<",
            "*>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    return-object p1
.end method

.method public getDataItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mysettingsdk/backup/data/SettingItem<",
            "*>;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mDataItems:Ljava/util/Map;

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method public getFileItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->mFileItems:Ljava/util/Map;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->getDataPackageBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
