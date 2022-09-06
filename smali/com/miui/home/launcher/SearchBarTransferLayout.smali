.class public Lcom/miui/home/launcher/SearchBarTransferLayout;
.super Landroid/widget/LinearLayout;
.source "SearchBarTransferLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarTransferLayout$Data;,
        Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;
    }
.end annotation


# static fields
.field private static final URI:Landroid/net/Uri;


# instance fields
.field private mHideTextRunnable:Ljava/lang/Runnable;

.field private mHideTransferRunnable:Ljava/lang/Runnable;

.field private mIcon:Landroid/widget/ImageView;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mObserver:Landroid/database/ContentObserver;

.field private mParent:Lcom/miui/home/launcher/SearchBarExtraLayout;

.field private mPauseRunnable:Ljava/lang/Runnable;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mTemp:Landroid/os/Bundle;

.field private mTitle:Landroid/widget/TextView;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.quicksearchbox.xiaomi/transfer"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/SearchBarTransferLayout;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$DdJ8xQ3I4lAT3iMj7foaSdjr4tY;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$DdJ8xQ3I4lAT3iMj7foaSdjr4tY;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResumeRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance p2, Lcom/miui/home/launcher/SearchBarTransferLayout$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/SearchBarTransferLayout$1;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mPauseRunnable:Ljava/lang/Runnable;

    .line 162
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTemp:Landroid/os/Bundle;

    .line 291
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$8bnGihZtmC_xN8XUlozxS6RRiLs;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$8bnGihZtmC_xN8XUlozxS6RRiLs;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mHideTextRunnable:Ljava/lang/Runnable;

    .line 292
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$VGvfZB_KscH83U1deL7WcQDRXrc;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$VGvfZB_KscH83U1deL7WcQDRXrc;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mHideTransferRunnable:Ljava/lang/Runnable;

    .line 63
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResolver:Landroid/content/ContentResolver;

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    .line 66
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/SearchBarTransferLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/SearchBarTransferLayout;->callTransferProvider(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .line 38
    sget-object v0, Lcom/miui/home/launcher/SearchBarTransferLayout;->URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/content/ContentResolver;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/SearchBarTransferLayout;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->updateTextColor()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private callTransferProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 165
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBarTransfer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Launcher.Transfer"

    const-string p2, "transfer is closed"

    .line 166
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTemp:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTemp:Landroid/os/Bundle;

    const-string v1, "ref"

    const-string v2, "com.miui.home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTemp:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTemp:Landroid/os/Bundle;

    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/SearchBarTransferLayout;->URI:Landroid/net/Uri;

    const-string v2, "transfer"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTemp:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v0, "Launcher.Transfer"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transfer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extra:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.Transfer"

    const-string v0, "call failed"

    .line 179
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private hideText()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mHideTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 328
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/SearchBarTransferLayout$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/SearchBarTransferLayout$2;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$8bnGihZtmC_xN8XUlozxS6RRiLs(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->hideText()V

    return-void
.end method

.method public static synthetic lambda$FODkp_9t_gAZtvXk9vkTb7wa16I(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->registerTransferObserver()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->callTransferProvider(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$0(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$FODkp_9t_gAZtvXk9vkTb7wa16I;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$FODkp_9t_gAZtvXk9vkTb7wa16I;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$showTransferIfNeed$2(Lcom/miui/home/launcher/SearchBarTransferLayout;Lcom/miui/home/launcher/SearchBarTransferLayout$Data;)V
    .locals 1

    const-string v0, "onShow"

    .line 314
    iget-object p1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->dataId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->callTransferProvider(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$vKYaWcdtnqLgKrZYK4mUk9EGk-M(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->unregisterTransferObserver()V

    return-void
.end method

.method private declared-synchronized registerTransferObserver()V
    .locals 4

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->isAttachedToWindow()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 110
    :try_start_1
    new-instance v0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;Landroid/os/Handler;)V

    .line 111
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/SearchBarTransferLayout;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mObserver:Landroid/database/ContentObserver;

    const-string v0, "Launcher.Transfer"

    const-string v1, "register transfer observer"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Launcher.Transfer"

    const-string v2, "register transfer observer exception"

    .line 115
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterTransferObserver()V
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mObserver:Landroid/database/ContentObserver;

    const-string v0, "Launcher.Transfer"

    const-string v1, "unregister transfer observer"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateTextColor()V
    .locals 2

    .line 372
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData;->hasStyleData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060595

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060594

    goto :goto_0

    :cond_1
    const v1, 0x7f060593

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 378
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public hideTransferIfNeed()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mHideTransferRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mParent:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->getDisplayedChild()I

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mParent:Lcom/miui/home/launcher/SearchBarExtraLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarExtraLayout;->setDisplayedChild(I)V

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarExtraLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mParent:Lcom/miui/home/launcher/SearchBarExtraLayout;

    .line 88
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$BLd748MU-oCaMEHig0iwNaSLea4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$BLd748MU-oCaMEHig0iwNaSLea4;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$FODkp_9t_gAZtvXk9vkTb7wa16I;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$FODkp_9t_gAZtvXk9vkTb7wa16I;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$vKYaWcdtnqLgKrZYK4mUk9EGk-M;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$vKYaWcdtnqLgKrZYK4mUk9EGk-M;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0389

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a019e

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mIcon:Landroid/widget/ImageView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 79
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    .line 79
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CheckTransferMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->showTransferIfNeed()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;->getLifecycle()I

    move-result p1

    const-wide/16 v0, 0xc8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 383
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isSearchBarAreaLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080195

    goto :goto_0

    :cond_0
    const v0, 0x7f080194

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->updateTextColor()V

    .line 386
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public showTransferIfNeed()V
    .locals 4

    .line 295
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mParent:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-nez v0, :cond_1

    return-void

    .line 301
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Launcher.Transfer"

    const-string v1, "search bar extra layout is not shown"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mHideTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 306
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mHideTransferRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 307
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    .line 308
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 309
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 310
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mParent:Lcom/miui/home/launcher/SearchBarExtraLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarExtraLayout;->getDisplayedChild()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 312
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mParent:Lcom/miui/home/launcher/SearchBarExtraLayout;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/SearchBarExtraLayout;->setDisplayedChild(I)V

    .line 314
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$jco-j2tLij83w6VQFnP68tu52kU;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$jco-j2tLij83w6VQFnP68tu52kU;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;Lcom/miui/home/launcher/SearchBarTransferLayout$Data;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    iget-object v1, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarTransferShow(Ljava/lang/String;)V

    .line 316
    iget v1, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->textShowTime:I

    if-lez v1, :cond_4

    .line 317
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mHideTextRunnable:Ljava/lang/Runnable;

    iget v2, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->textShowTime:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/SearchBarTransferLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    :cond_4
    iget v1, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->showTime:I

    if-lez v1, :cond_5

    .line 320
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mHideTransferRunnable:Ljava/lang/Runnable;

    iget v2, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->showTime:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/SearchBarTransferLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method
