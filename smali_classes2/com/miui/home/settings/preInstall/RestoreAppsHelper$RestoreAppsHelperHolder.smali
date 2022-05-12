.class Lcom/miui/home/settings/preInstall/RestoreAppsHelper$RestoreAppsHelperHolder;
.super Ljava/lang/Object;
.source "RestoreAppsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/preInstall/RestoreAppsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreAppsHelperHolder"
.end annotation


# static fields
.field private static final restoreAppsHelper:Lcom/miui/home/settings/preInstall/RestoreAppsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/miui/home/settings/preInstall/RestoreAppsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/settings/preInstall/RestoreAppsHelper;-><init>(Lcom/miui/home/settings/preInstall/RestoreAppsHelper$1;)V

    sput-object v0, Lcom/miui/home/settings/preInstall/RestoreAppsHelper$RestoreAppsHelperHolder;->restoreAppsHelper:Lcom/miui/home/settings/preInstall/RestoreAppsHelper;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/settings/preInstall/RestoreAppsHelper;
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/home/settings/preInstall/RestoreAppsHelper$RestoreAppsHelperHolder;->restoreAppsHelper:Lcom/miui/home/settings/preInstall/RestoreAppsHelper;

    return-object v0
.end method
