.class public Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ElderlyManModeChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver$_lancet;
    }
.end annotation


# static fields
.field private static final MIUI_HOME_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.home"

    const-string v2, "com.miui.home.launcher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;->MIUI_HOME_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private changeAndStartDefaultHome(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    .line 52
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->changeDefaultHome(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;->startDefaultHome(Landroid/content/Context;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "status"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "ElderlyManModeChangedReceiver"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elderlyMan mode change, current elderlyMan mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 28
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomeResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 29
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 30
    sget-object v1, Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;->MIUI_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default_home_before_elderly_man"

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object p2, Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;->MIUI_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;->changeAndStartDefaultHome(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const-string p1, "ElderlyManModeChangedReceiver"

    const-string p2, "current default home is MiuiHome, needn\'t change"

    .line 34
    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "default_home_before_elderly_man"

    .line 36
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "default_home_before_elderly_man"

    const-string v0, ""

    .line 38
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    const-string v0, "default_home_before_elderly_man"

    .line 39
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;->changeAndStartDefaultHome(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_2
    const-string p1, "ElderlyManModeChangedReceiver"

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed, saved default home("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") don\'t exist"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "ElderlyManModeChangedReceiver"

    const-string p2, "do nothing, didn\'t save defaultHomeBeforeElderlyMan"

    .line 47
    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startDefaultHome(Landroid/content/Context;)V
    .locals 2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/oldman/ElderlyManModeChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
