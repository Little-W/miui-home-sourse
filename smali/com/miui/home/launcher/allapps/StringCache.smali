.class public Lcom/miui/home/launcher/allapps/StringCache;
.super Ljava/lang/Object;
.source "StringCache.java"


# instance fields
.field public allAppsPersonalTab:Ljava/lang/String;

.field public allAppsWorkTab:Ljava/lang/String;

.field public workProfileEdu:Ljava/lang/String;

.field public workProfileEduAccept:Ljava/lang/String;

.field public workProfileEduTitle:Ljava/lang/String;

.field public workProfileEnableButton:Ljava/lang/String;

.field public workProfilePauseButton:Ljava/lang/String;

.field public workProfilePausedDescription:Ljava/lang/String;

.field public workProfilePausedTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 60
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/StringCache;->getUpdatableEnterpriseSting(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getUpdatableEnterpriseSting(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const-string p0, "StringCache"

    .line 67
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 70
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$StringCache$BfF7qI6b-aRgp8oeOdHav9nPl9c;

    invoke-direct {v0, p1, p3}, Lcom/miui/home/launcher/allapps/-$$Lambda$StringCache$BfF7qI6b-aRgp8oeOdHav9nPl9c;-><init>(Landroid/content/Context;I)V

    :try_start_0
    const-string p1, "android.app.admin.DevicePolicyResourcesManager"

    .line 72
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getResources"

    const/4 p3, 0x0

    new-array v5, p3, [Ljava/lang/Class;

    new-array v6, p3, [Ljava/lang/Object;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "getString"

    .line 75
    const-class v6, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v7, p3

    const-class v2, Ljava/util/function/Supplier;

    const/4 v3, 0x1

    aput-object v2, v7, v3

    new-array v8, v1, [Ljava/lang/Object;

    aput-object p2, v8, p3

    aput-object v0, v8, v3

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "getUpdatableEnterpriseSting error"

    .line 79
    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 82
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUpdatableEnterpriseSting updatableStringId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   result="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method static synthetic lambda$getUpdatableEnterpriseSting$0(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public loadStrings(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Launcher.ALL_APPS_WORK_TAB"

    const v1, 0x7f11050a

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEduTitle:Ljava/lang/String;

    const-string v1, "Launcher.WORK_PROFILE_EDU"

    const v2, 0x7f110509

    .line 40
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEdu:Ljava/lang/String;

    const-string v1, "Launcher.WORK_PROFILE_EDU_ACCEPT"

    const v2, 0x7f110507

    .line 42
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEduAccept:Ljava/lang/String;

    const-string v1, "Launcher.WORK_PROFILE_PAUSED_TITLE"

    const v2, 0x7f110502

    .line 44
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    const-string v1, "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

    const v2, 0x7f110500

    .line 46
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    const-string v1, "Launcher.WORK_PROFILE_ENABLE_BUTTON"

    const v2, 0x7f110505

    .line 48
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/StringCache;->workProfileEnableButton:Ljava/lang/String;

    const-string v1, "Launcher.WORK_PROFILE_PAUSE_BUTTON"

    const v2, 0x7f110504

    .line 50
    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/StringCache;->workProfilePauseButton:Ljava/lang/String;

    const v1, 0x7f11004a

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/StringCache;->allAppsWorkTab:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB"

    const v1, 0x7f110045

    .line 54
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/allapps/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    return-void
.end method
