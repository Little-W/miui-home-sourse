.class public Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$_lancet;
    }
.end annotation


# static fields
.field public static final CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final RECENT_INCLUDE_PROFILES:I = 0x4

.field public static final RECENT_INGORE_DOCKED_STACK_TOP_TASK:I = 0x10

.field public static final RECENT_INGORE_PINNED_STACK_TASKS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActivityManagerWrapper"

.field private static final sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

.field static final sRecentsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

.field private mContext:Landroid/content/Context;

.field mDisplay:Landroid/view/Display;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

.field mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    .line 62
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.tv.pip.PipOnboardingActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.tv.pip.PipMenuActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWm:Landroid/view/WindowManager;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    invoke-static {}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    .line 86
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 296
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    return-object v0
.end method

.method public static getTaskThumbnailInfo(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 250
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;-><init>()V

    .line 251
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    .line 252
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    .line 253
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    .line 254
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    .line 255
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getSystemUiVisibility()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    .line 256
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result p0

    iput p0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    :cond_1
    return-object v0
.end method

.method public static wrapHardwareBuffer(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 236
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    .line 240
    invoke-static {v1, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public cancelRecentsAnimation(Z)V
    .locals 2

    .line 408
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->cancelRecentsAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed to cancel recents animation"

    .line 410
    invoke-static {v0, v1, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    new-instance v1, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$1;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v1, v0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mLabel:Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 4

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    return-object v0

    .line 269
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 270
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 271
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getLastActiveTime(Landroid/app/ActivityManager$RecentTaskInfo;)J
    .locals 2

    .line 200
    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    return-wide v0
.end method

.method public getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 138
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p3, :cond_0

    const/16 v1, 0x3f

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e

    :goto_0
    const/4 v2, 0x0

    .line 149
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0, v1, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed to get recent tasks"

    .line 151
    invoke-static {v0, v1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v2, :cond_1

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 160
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    .line 161
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 162
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v4, :cond_3

    .line 168
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 169
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 170
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 177
    :cond_3
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    move v5, v0

    goto :goto_3

    :cond_4
    move v5, v1

    .line 179
    :goto_3
    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v5

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    if-nez p3, :cond_6

    .line 181
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_6
    move v3, v1

    goto :goto_2

    .line 187
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {v2, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    const/4 v0, 0x0

    .line 321
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object p1

    .line 326
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    const/4 p2, 0x0

    .line 329
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getRunningTaskInfoUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 0

    .line 489
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    return p1
.end method

.method public getStackId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    .line 204
    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    return p1
.end method

.method public getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 2

    .line 209
    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 212
    iget-object p1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-object v0
.end method

.method public getThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 3

    const/4 v0, 0x0

    .line 224
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-interface {v1, p1, v0}, Landroid/app/IActivityManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "ActivityManagerWrapper"

    const-string v2, "Failed to retrieve task snapshot"

    .line 226
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 228
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->wrapHardwareBuffer(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 230
    iput-object v1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 231
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnailInfo(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    .line 232
    iput-boolean v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isAccessLocked:Z

    return-void
.end method

.method public getUserId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    .line 196
    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    return p1
.end method

.method public getWindowModeFromRecentTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    .line 192
    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    return p1
.end method

.method public registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->registerTaskStackListener(Landroid/app/IActivityManager;Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 480
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 481
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 434
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 438
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    :cond_0
    const/4 p3, 0x4

    .line 440
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    move-object v3, p2

    goto :goto_1

    :cond_1
    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, p2

    goto :goto_1

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 444
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 446
    :cond_4
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 447
    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    move-object v3, p2

    .line 453
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    new-instance p3, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-virtual {p2, p3}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 421
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 344
    :try_start_0
    new-instance v1, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$2;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$2;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 355
    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    .line 392
    :cond_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    invoke-interface {p2, p1, v1, v0}, Landroid/app/IActivityTaskManager;->startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V

    if-eqz p4, :cond_2

    .line 394
    invoke-virtual {p6, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-eqz p5, :cond_2

    .line 398
    invoke-virtual {p6, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->removeListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
