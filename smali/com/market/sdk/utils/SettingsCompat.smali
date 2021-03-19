.class public Lcom/market/sdk/utils/SettingsCompat;
.super Ljava/lang/Object;
.source "SettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/utils/SettingsCompat$Secure;,
        Lcom/market/sdk/utils/SettingsCompat$System;,
        Lcom/market/sdk/utils/SettingsCompat$Global;
    }
.end annotation


# static fields
.field public static final SYS_STORAGE_THRESHOLD_MAX_BYTES:Ljava/lang/String; = "sys_storage_threshold_max_bytes"

.field private static final TAG:Ljava/lang/String; = "SettingsCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
