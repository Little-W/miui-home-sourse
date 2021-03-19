.class public Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;
.super Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;
.source "KeyJsonSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/mysettingsdk/backup/data/SettingItem<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "json"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem$1;

    invoke-direct {v0}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected getJsonValue()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    const-string v0, "json"

    return-object v0
.end method

.method protected setValueFromJson(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "value"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;->stringToValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected stringToValue(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 18
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "SettingsBackup"

    const-string v1, "JSONException occorred when stringToValue()"

    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 10
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/data/KeyJsonSettingItem;->valueToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected valueToString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
