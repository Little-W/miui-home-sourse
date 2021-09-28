.class public Lcom/miui/home/launcher/AddItemActivity;
.super Landroid/app/Activity;
.source "AddItemActivity.java"


# instance fields
.field private mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/miui/home/launcher/AddItemActivity;)V
    .locals 4

    .line 40
    new-instance v0, Lcom/miui/launcher/common/ShortcutInfoCompat;

    iget-object v1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    invoke-virtual {v1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 41
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->makeInstallShortcutIntent(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    .line 43
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xe

    .line 42
    invoke-static {p0, v2, v1, v0, v3}, Lcom/miui/home/launcher/InstallShortcutReceiver;->checkToAddShortcut(Landroid/content/Context;Lcom/miui/launcher/common/PinItemRequestCompat;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$setupWidget$1(Lcom/miui/home/launcher/AddItemActivity;Landroid/appwidget/AppWidgetProviderInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 7

    .line 59
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->hasAddShortcutPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "AddItemActivity-PinShortcutRequestUtils"

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add widget failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no permission"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-void

    .line 63
    :cond_0
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/InstallWidgetReceiver;->addWidget(Lcom/miui/home/launcher/Launcher;Landroid/content/ComponentName;JIILcom/miui/home/launcher/common/ResultRunnable;)V

    return-void
.end method

.method private setupWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$RFCEqIK8NDL_kJOys1FAxDQFq4s;

    invoke-direct {v1, p0, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$RFCEqIK8NDL_kJOys1FAxDQFq4s;-><init>(Lcom/miui/home/launcher/AddItemActivity;Landroid/appwidget/AppWidgetProviderInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/AddItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getPinItemRequest(Landroid/content/Intent;)Lcom/miui/launcher/common/PinItemRequestCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    const-string p1, "AddItemActivity-PinShortcutRequestUtils"

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getRequestType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getRequestType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 39
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$abtTin6RH7oxBHHOjZ6jRWUFbtA;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$abtTin6RH7oxBHHOjZ6jRWUFbtA;-><init>(Lcom/miui/home/launcher/AddItemActivity;)V

    .line 46
    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getRequestType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    invoke-virtual {p1, p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    invoke-virtual {v0}, Lcom/miui/launcher/common/PinItemRequestCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/MIUIWidgetUtil;->startWidgetDetailPage(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/AddItemActivity;->setupWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 53
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/AddItemActivity;->finish()V

    return-void
.end method
