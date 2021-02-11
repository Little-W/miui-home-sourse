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

    .line 33
    new-instance v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    .line 35
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 48
    sget-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x80

    .line 51
    :try_start_0
    invoke-interface {v0, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
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

    .line 64
    :try_start_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
