.class public Lcom/miui/home/recents/UserSetupCompleteHelper;
.super Ljava/lang/Object;
.source "UserSetupCompleteHelper.java"


# static fields
.field private static sIsInit:Z

.field private static sUserSetupComplete:Z

.field private static sUserSetupCompleteObserver:Landroid/database/ContentObserver;


# direct methods
.method public static isUserSetupComplete()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/miui/home/recents/UserSetupCompleteHelper;->sIsInit:Z

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/miui/home/recents/UserSetupCompleteHelper;->updateUserSetupComplete()V

    .line 42
    :cond_0
    sget-boolean v0, Lcom/miui/home/recents/UserSetupCompleteHelper;->sUserSetupComplete:Z

    return v0
.end method

.method public static regisUserSetupComplete(Landroid/os/Handler;)V
    .locals 3

    .line 25
    sget-object v0, Lcom/miui/home/recents/UserSetupCompleteHelper;->sUserSetupCompleteObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/miui/home/recents/UserSetupCompleteHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/UserSetupCompleteHelper$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/miui/home/recents/UserSetupCompleteHelper;->sUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 33
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_setup_complete"

    .line 34
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/home/recents/UserSetupCompleteHelper;->sUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 33
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static updateUserSetupComplete()V
    .locals 3

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "user_setup_complete"

    .line 17
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/miui/home/recents/UserSetupCompleteHelper;->sUserSetupComplete:Z

    .line 20
    sput-boolean v2, Lcom/miui/home/recents/UserSetupCompleteHelper;->sIsInit:Z

    :cond_1
    return-void
.end method
