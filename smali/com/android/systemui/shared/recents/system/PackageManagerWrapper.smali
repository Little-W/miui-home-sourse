.class public Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field private static final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static final sInstance:Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    :try_start_0
    sget-object p0, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
