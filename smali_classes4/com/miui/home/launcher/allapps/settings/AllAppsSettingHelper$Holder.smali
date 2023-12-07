.class Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$Holder;
.super Ljava/lang/Object;
.source "AllAppsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;-><init>(Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$1;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;
    .locals 1

    .line 31
    sget-object v0, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$Holder;->sInstance:Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    return-object v0
.end method
