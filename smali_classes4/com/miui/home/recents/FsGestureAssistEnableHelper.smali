.class public Lcom/miui/home/recents/FsGestureAssistEnableHelper;
.super Ljava/lang/Object;
.source "FsGestureAssistEnableHelper.java"


# static fields
.field private static final sInstance:Lcom/miui/home/recents/FsGestureAssistEnableHelper;


# instance fields
.field private mAssistContentObserver:Landroid/database/ContentObserver;

.field private mAssistEnableObserver:Landroid/database/ContentObserver;

.field private mIsAssistantAvailable:Z

.field private mIsSupportGoogleAssist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    invoke-direct {v0}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;-><init>()V

    sput-object v0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->sInstance:Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/FsGestureAssistEnableHelper;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->updateAssistAvailable()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->sInstance:Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    return-object v0
.end method

.method private updateAssistAvailable()V
    .locals 1

    .line 68
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$FsGestureAssistEnableHelper$IpifK7VLHQXuhJcQoPVaEsjcWGY;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$FsGestureAssistEnableHelper$IpifK7VLHQXuhJcQoPVaEsjcWGY;-><init>(Lcom/miui/home/recents/FsGestureAssistEnableHelper;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public isSupportGoogleAssist()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mIsSupportGoogleAssist:Z

    return p0
.end method

.method public synthetic lambda$updateAssistAvailable$0$FsGestureAssistEnableHelper()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/AssistManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/system/AssistManager;

    move-result-object v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/AssistManager;->isSupportGoogleAssist(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mIsSupportGoogleAssist:Z

    .line 70
    iget-boolean v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mIsSupportGoogleAssist:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mIsAssistantAvailable:Z

    .line 72
    iget-boolean v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mIsAssistantAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "google_assist_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mIsAssistantAvailable:Z

    return-void
.end method

.method public registerAssistObserver(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lcom/miui/home/recents/FsGestureAssistEnableHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/FsGestureAssistEnableHelper$1;-><init>(Lcom/miui/home/recents/FsGestureAssistEnableHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistEnableObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lcom/miui/home/recents/FsGestureAssistEnableHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/FsGestureAssistEnableHelper$2;-><init>(Lcom/miui/home/recents/FsGestureAssistEnableHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistEnableObserver:Landroid/database/ContentObserver;

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistEnableObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_assist_enable"

    .line 58
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistEnableObserver:Landroid/database/ContentObserver;

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "assistant"

    .line 62
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object p0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public supportAssistantGesture()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mIsAssistantAvailable:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unRegisterAssistObserver(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistEnableObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->mAssistEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
