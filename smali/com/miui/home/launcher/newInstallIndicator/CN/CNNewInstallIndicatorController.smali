.class public Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;
.super Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
.source "CNNewInstallIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController$CNNewInstallIndicatorControllerInner;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;-><init>()V

    return-void
.end method

.method public static getController()Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;
    .locals 1

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController$CNNewInstallIndicatorControllerInner;->access$000()Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNewInstalledShortcutInfos(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const-string v0, "com.miui.home:string/default_folder_title_recommend"

    .line 37
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;->getShortcutInfosInFolders(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public init(Z)V
    .locals 0

    const p1, -0xca4b02

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;->setIndicatorColor(I)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/newInstallIndicator/CN/CNNewInstallIndicatorController;->setCanFolderShowIndicator(Z)V

    return-void
.end method

.method public updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method
