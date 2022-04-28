.class public final Lcom/miui/home/LauncherDecoupleHelper;
.super Ljava/lang/Object;
.source "LauncherDecoupleHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/miui/home/LauncherDecoupleHelper;

    invoke-direct {v0}, Lcom/miui/home/LauncherDecoupleHelper;-><init>()V

    sput-object v0, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filterHideApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getSettingFragment()Lcom/miui/home/settings/MiuiHomeSettings;
    .locals 1

    .line 27
    new-instance v0, Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {v0}, Lcom/miui/home/settings/MiuiHomeSettings;-><init>()V

    return-object v0
.end method

.method public final handleActivityResult(I)V
    .locals 0

    return-void
.end method

.method public final isShowSearchBar(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final migratePocoData()V
    .locals 0

    return-void
.end method

.method public final onAppsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "removedPackages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setAppListFilter(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setIsHideApp(Lcom/miui/home/launcher/AppInfo;Z)V
    .locals 0

    const-string p2, "info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final startSplashActivity(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
