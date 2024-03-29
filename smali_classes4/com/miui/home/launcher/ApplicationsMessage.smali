.class public Lcom/miui/home/launcher/ApplicationsMessage;
.super Ljava/lang/Object;
.source "ApplicationsMessage.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;,
        Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;
    }
.end annotation


# static fields
.field private static final TYPE_ALL:[Ljava/lang/Integer;

.field private static final TYPE_APP:[Ljava/lang/Integer;


# instance fields
.field private final mAcceptedSenders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

.field private mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

.field private mObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelfUpdateItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xe

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 295
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 296
    sput-object v0, Lcom/miui/home/launcher/ApplicationsMessage;->TYPE_ALL:[Ljava/lang/Integer;

    new-array v0, v1, [Ljava/lang/Integer;

    aput-object v3, v0, v2

    .line 298
    sput-object v0, Lcom/miui/home/launcher/ApplicationsMessage;->TYPE_APP:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mAcceptedSenders:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    .line 373
    new-instance v0, Lcom/miui/home/launcher/ApplicationsMessage$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ApplicationsMessage$3;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    .line 169
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mAcceptedSenders:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mAcceptedSenders:Ljava/util/HashSet;

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mAcceptedSenders:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.mipicks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    const-string v0, "com.xiaomi.market"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mWorkHandler:Landroid/os/Handler;

    .line 181
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/ApplicationsMessage;->updateMessage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mAcceptedSenders:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/ApplicationsMessage;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->clearAllMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/ApplicationsMessage;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/ApplicationsMessage;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->initSuperscriptCountObserver()V

    return-void
.end method

.method private clearAllMessage()V
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 252
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    invoke-virtual {v1, v2, v2, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 258
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_1

    .line 260
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 261
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 262
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 263
    invoke-direct {p0, v1, v2, v2, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->updateAppsViewMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private getWorkspaceShortcutInfo(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationsMessage;->TYPE_APP:[Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/ApplicationsMessage;->TYPE_ALL:[Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private initSuperscriptCountObserver()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;

    if-nez v3, :cond_1

    .line 82
    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v2, v4}, Lcom/miui/home/launcher/ApplicationsMessage$1;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;Ljava/lang/String;Landroid/os/Handler;)V

    .line 116
    new-instance v4, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;

    invoke-direct {v4, v0, v2, v3}, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;)V

    invoke-static {v4}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    .line 119
    iget-object v4, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x1

    .line 121
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;->onChange(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    .line 191
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic lambda$initSuperscriptCountObserver$0(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;)V
    .locals 1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".superscript_count"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic lambda$updateFolderMessage$1(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    .line 224
    new-instance p1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 226
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 227
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isEmptyMessage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, v0

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateFolderMessage$2(Lcom/miui/home/launcher/FolderIcon;Ljava/lang/Integer;)V
    .locals 1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 238
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->setMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateAppsViewMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private updateAppsViewMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    if-eqz p1, :cond_0

    .line 346
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method private updateMessage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    const-string v0, ""

    .line 272
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 278
    invoke-direct {p0, v0, p4, p5, p6}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    const-string v0, "."

    .line 282
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v3, v0

    move-object v2, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p3

    .line 287
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)V

    goto :goto_3

    :cond_4
    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p3

    .line 273
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 290
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, p3}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/ApplicationsMessage;->updateAppsViewMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V

    return-void
.end method

.method private updateWorkspaceMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 319
    invoke-direct {p0, p1, p5}, Lcom/miui/home/launcher/ApplicationsMessage;->getWorkspaceShortcutInfo(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 320
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/miui/home/launcher/ShortcutInfo;

    .line 322
    invoke-direct {p0, p5, p2, p3, p4}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 8

    .line 305
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)V

    :cond_1
    return-void
.end method

.method private updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isHideApplicationMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 331
    iget-object p2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 334
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEventBusHandlers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 383
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    .line 362
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    if-eqz v3, :cond_1

    .line 365
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 369
    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 370
    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public onLaunchApplication(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_0
    return-void
.end method

.method public requestUpdateMessages(Z)V
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    if-nez v0, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->initialize()V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/ApplicationsMessage$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$2;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 211
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/ApplicationsMessage;->updateAppsViewMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_2
    return-void
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 217
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_1

    .line 218
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$Z6kOW4CXSjc-b6pTns3HlViT3w8;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$Z6kOW4CXSjc-b6pTns3HlViT3w8;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$IFXUHAHfCcDLJUFy0wpH6AuuRiA;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$IFXUHAHfCcDLJUFy0wpH6AuuRiA;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    const/4 p0, 0x0

    invoke-static {v0, p1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
