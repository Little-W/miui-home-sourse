.class public Lcom/miui/home/launcher/util/PauseAdvancedHelper;
.super Ljava/lang/Object;
.source "PauseAdvancedHelper.java"


# static fields
.field private static final NEED_PAUSE_ADVANCED_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSetPauseAdvanced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "com.ss.android.ugc.aweme"

    const-string v1, "com.kuaishou.nebula"

    const-string v2, "com.smile.gifmaker"

    const-string v3, "com.ss.android.ugc.aweme.lite"

    const-string v4, "com.tencent.qqlive"

    const-string v5, "com.ss.android.article.video"

    const-string v6, "com.ss.android.article.news"

    const-string v7, "com.youku.phone"

    const-string v8, "com.baidu.haokan"

    const-string v9, "com.qiyi.video.lite"

    const-string v10, "com.sohu.sohuvideo"

    const-string v11, "com.tencent.weishi"

    const-string v12, "com.hunantv.imgo.activity"

    const-string v13, "com.cmcc.cmvideo"

    const-string v14, "com.xunmeng.pinduoduo"

    const-string v15, "com.sina.weibo"

    const-string v16, "com.sina.news"

    .line 18
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->NEED_PAUSE_ADVANCED_LIST:Ljava/util/List;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->sIsSetPauseAdvanced:Z

    return-void
.end method

.method static synthetic lambda$setPauseAdvanced$0([I)V
    .locals 4

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 53
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseAdvanced isMusicActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mIsSetPauseAdvanced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->sIsSetPauseAdvanced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   runningTaskIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PauseAdvancedHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 58
    sget-boolean v0, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->sIsSetPauseAdvanced:Z

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/android/hideapi/ActivityTaskManagerExpose;->getService()Lcom/android/hideapi/IActivityTaskManagerExpose;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/hideapi/IActivityTaskManagerExpose;->setPauseAdvanced([I)V

    const/4 p0, 0x1

    .line 60
    sput-boolean p0, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->sIsSetPauseAdvanced:Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v2}, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->unSetPauseAdvanced(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$unSetPauseAdvanced$1(Z)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unSetPauseAdvanced resume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   mIsSetPauseAdvanced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->sIsSetPauseAdvanced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PauseAdvancedHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-boolean v0, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->sIsSetPauseAdvanced:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/android/hideapi/ActivityTaskManagerExpose;->getService()Lcom/android/hideapi/IActivityTaskManagerExpose;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/hideapi/IActivityTaskManagerExpose;->unSetPauseAdvanced(Z)V

    const/4 p0, 0x0

    .line 76
    sput-boolean p0, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->sIsSetPauseAdvanced:Z

    :cond_0
    return-void
.end method

.method private static needPauseAdvance(Ljava/lang/String;)Z
    .locals 3

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->NEED_PAUSE_ADVANCED_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needPauseAdvance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PauseAdvancedHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static setPauseAdvanced(Ljava/lang/String;[I)V
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->needPauseAdvance(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$hdhgmw8hnVx5EcPjDlV7R0IsEhQ;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$hdhgmw8hnVx5EcPjDlV7R0IsEhQ;-><init>([I)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static unSetPauseAdvanced(Z)V
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unSetPauseAdvanced resume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PauseAdvancedHelper"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$9yx4yUdCGmq2A8aWan1zR9EAWtQ;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$9yx4yUdCGmq2A8aWan1zR9EAWtQ;-><init>(Z)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
