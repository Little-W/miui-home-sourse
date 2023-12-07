.class public Lcom/market/sdk/utils/SettingsCompat$System;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/SettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final DEFAULT_DISCOVER_AUTO_UPDATE:I = 0x1

.field public static final KEY_DISCOVER_AUTO_UPDATE:Ljava/lang/String; = "com.xiaomi.discover.auto_update_enabled"

.field public static final KEY_DISCOVER_METERED_UPDATE_ANSWERED:Ljava/lang/String; = "com.xiaomi.discover.metered_update_answered"

.field public static final KEY_DISCOVER_METERED_UPDATE_CONFIRM_NEEDED_BY_REGION:Ljava/lang/String; = "com.xiaomi.discover.metered_update_confirm_needed_by_region"

.field public static final VALUE_DISCOVER_AUTO_UPDATE_4G:I = 0x2

.field public static final VALUE_DISCOVER_AUTO_UPDATE_DISABLED:I = 0x0

.field public static final VALUE_DISCOVER_AUTO_UPDATE_WIFI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/market/sdk/utils/SettingsCompat$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsCompat"

    invoke-static {p1, p0}, Lcom/market/sdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsCompat"

    invoke-static {p1, p0}, Lcom/market/sdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static putInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsCompat"

    invoke-static {p1, p0}, Lcom/market/sdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
