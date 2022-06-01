.class public abstract Lcom/miui/home/recents/ForegroundTaskHelper;
.super Ljava/lang/Object;
.source "ForegroundTaskHelper.java"


# static fields
.field private static final IS_NEED_REMEMBER:Z

.field private static sInstance:Lcom/miui/home/recents/ForegroundTaskHelper;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportPip()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/miui/home/recents/ForegroundTaskHelper;->IS_NEED_REMEMBER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;
    .locals 1

    .line 39
    sget-object v0, Lcom/miui/home/recents/ForegroundTaskHelper;->sInstance:Lcom/miui/home/recents/ForegroundTaskHelper;

    if-nez v0, :cond_1

    .line 40
    sget-boolean v0, Lcom/miui/home/recents/ForegroundTaskHelper;->IS_NEED_REMEMBER:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;

    invoke-direct {v0}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;-><init>()V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/miui/home/recents/ForegroundTaskHelperUseUnremember;

    invoke-direct {v0}, Lcom/miui/home/recents/ForegroundTaskHelperUseUnremember;-><init>()V

    :goto_0
    sput-object v0, Lcom/miui/home/recents/ForegroundTaskHelper;->sInstance:Lcom/miui/home/recents/ForegroundTaskHelper;

    .line 44
    :cond_1
    sget-object v0, Lcom/miui/home/recents/ForegroundTaskHelper;->sInstance:Lcom/miui/home/recents/ForegroundTaskHelper;

    return-object v0
.end method


# virtual methods
.method public abstract clearForegroundTasks()V
.end method

.method public abstract clearFullScreenTask()V
.end method

.method public abstract getForegroundSmallWindows()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/recents/ForegroundTaskHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public abstract removeForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;)V
.end method

.method public abstract saveForegroundSmallWinowsAndFullScreen()V
.end method

.method public abstract setForegroundSmallWindows(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startForegroundFullScreenActivity(Landroid/app/ActivityOptions;)V
.end method

.method public abstract startForegroundSmallWindows()V
.end method
