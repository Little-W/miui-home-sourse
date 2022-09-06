.class public Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;
.super Ljava/lang/Object;
.source "PackageManagerWrapper.java"


# static fields
.field public static final ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field private static final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static final sInstance:Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    .line 38
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3

    const/4 v0, 0x0

    .line 52
    :try_start_0
    sget-boolean v1, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    const/16 v2, 0x80

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    sget-object p1, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz p1, :cond_1

    .line 58
    sget-object p1, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 74
    :try_start_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
