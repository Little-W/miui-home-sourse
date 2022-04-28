.class public Lcom/miui/home/launcher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/InstallShortcutReceiver$Position;,
        Lcom/miui/home/launcher/InstallShortcutReceiver$_lancet;
    }
.end annotation


# static fields
.field public static final sSkippedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver;->sSkippedItems:Ljava/util/HashSet;

    .line 60
    sget-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver;->sSkippedItems:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static acceptRequestIfXspace(Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;)V
    .locals 3

    const-string v0, "InstallShortcutReceiver-PinShortcutRequestUtils"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptRequestIfXspace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.miui.securitycore"

    .line 268
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/miui/launcher/common/PinItemRequestCompat;->accept()Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/miui/home/launcher/InstallShortcutReceiver;->acceptRequestIfXspace(Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/miui/home/launcher/InstallShortcutReceiver;->isAddGadgetToLauncher(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/InstallShortcutReceiver$Position;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/miui/home/launcher/InstallShortcutReceiver;->getPosition(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/InstallShortcutReceiver$Position;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->setInfoFolderPosition(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/InstallShortcutReceiver$Position;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static checkToAddShortcut(Landroid/content/Context;Lcom/miui/launcher/common/PinItemRequestCompat;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "InstallShortcutReceiver-PinShortcutRequestUtils"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$llOv7Mlfm4orwFA-RNrT2xZSNco;

    move-object v2, v0

    move-object v3, p3

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/-$$Lambda$InstallShortcutReceiver$llOv7Mlfm4orwFA-RNrT2xZSNco;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getGadgetId(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7b9c9867

    if-eq v1, v2, :cond_2

    const v2, -0x2c08deee

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "miui.intent.action.CREATE_QUICK_CLEANUP_SHORTCUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "com.android.securitycenter.CREATE_DEEP_CLEAN_SHORTCUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0xe

    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPosition(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/InstallShortcutReceiver$Position;
    .locals 3

    const-string v0, "is_elderly_man_shortcut"

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.contacts"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    sget-object p0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->QUICK_CALL_SCREEN:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    return-object p0

    :cond_0
    const-string p1, "pin_shortcut_extra"

    .line 137
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 138
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1

    .line 139
    check-cast p1, Landroid/os/PersistableBundle;

    const-string p0, "folder_position"

    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p1, "folder_position"

    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    const/4 p1, -0x1

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0x7808671

    if-eq v0, v2, :cond_4

    const v1, 0x39cc76c3

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "sysapp_tool"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "sysapp_recommend"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move v1, p1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 153
    sget-object p0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->WORKSPACE:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    return-object p0

    .line 151
    :pswitch_0
    sget-object p0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->TOOLS_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    return-object p0

    .line 149
    :pswitch_1
    sget-object p0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->RECOMMEND_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static installShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;I)V
    .locals 10

    .line 160
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v8

    if-nez v8, :cond_0

    const-string p1, "InstallShortcutReceiver-PinShortcutRequestUtils"

    const-string p4, "Launcher is not ready,process later"

    .line 163
    invoke-static {p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p2, p3}, Lcom/miui/home/launcher/InstallShortcutReceiver;->acceptRequestIfXspace(Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;)V

    .line 165
    invoke-static {p0, p3}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils;->sendFailedBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    new-instance v9, Lcom/miui/home/launcher/InstallShortcutReceiver$1;

    move-object v0, v9

    move-object v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/InstallShortcutReceiver$1;-><init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static isAddGadgetToLauncher(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z
    .locals 10

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 274
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 275
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/InstallShortcutReceiver;->getGadgetId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 277
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->alreadyHasGadget(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-static {p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 279
    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isModeMatch(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "is_elderly_man_shortcut"

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    const-string v2, "com.android.contacts"

    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic lambda$checkToAddShortcut$0(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;I)V
    .locals 1

    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/Utilities;->hasAddShortcutPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "InstallShortcutReceiver-PinShortcutRequestUtils"

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "add shortcut failed, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has no permission"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 86
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_2

    const-string p0, "InstallShortcutReceiver-PinShortcutRequestUtils"

    const-string p1, "Failed to add shortcut because the extra shortcut intent is missing"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_2
    invoke-static {p2, p0}, Lcom/miui/home/launcher/InstallShortcutReceiver;->isModeMatch(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "InstallShortcutReceiver-PinShortcutRequestUtils"

    const-string p1, "Current mode is not match shortcut type"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_3
    invoke-static {p1, p2, p3, p0, p4}, Lcom/miui/home/launcher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;I)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 64
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/InstallShortcutReceiver;->sSkippedItems:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 69
    invoke-static {p1, v1, p2, v0, v2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->checkToAddShortcut(Landroid/content/Context;Lcom/miui/launcher/common/PinItemRequestCompat;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static setInfoFolderPosition(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/InstallShortcutReceiver$Position;Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 117
    sget-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->TOOLS_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "com.miui.home:string/default_folder_title_tools"

    .line 118
    invoke-virtual {p2, p1, v1}, Lcom/miui/home/launcher/Launcher;->getFolderInfoByTitle(Ljava/lang/String;Z)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->RECOMMEND_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    if-ne p1, v0, :cond_1

    const-string p1, "com.miui.home:string/default_folder_title_recommend"

    .line 120
    invoke-virtual {p2, p1, v1}, Lcom/miui/home/launcher/Launcher;->getFolderInfoByTitle(Ljava/lang/String;Z)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 123
    iget-wide v0, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 124
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    goto :goto_1

    :cond_2
    const-wide/16 p1, -0x64

    .line 126
    iput-wide p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/InstallShortcutReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
