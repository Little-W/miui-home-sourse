.class public abstract Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
.super Ljava/lang/Object;
.source "NewInstallIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$NewInstallIndicatorControllerInternal;
    }
.end annotation


# instance fields
.field private mCanFolderShowIndicator:Z

.field private mIndicatorColor:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xca4b02

    .line 22
    iput v0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mIndicatorColor:I

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mCanFolderShowIndicator:Z

    return-void
.end method

.method public static getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
    .locals 1

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$NewInstallIndicatorControllerInternal;->access$000()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getShortcutInfosInFolders$0(Ljava/util/HashSet;Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getShortcutInfosInFolders$1(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getShortcutInfosInFolders$2(Ljava/util/HashSet;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getShortcutInfosInFolders$3(Ljava/util/HashSet;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$Mt9Rc6aFJW3H4Q57jEZ5QCJo-IE;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$Mt9Rc6aFJW3H4Q57jEZ5QCJo-IE;

    .line 60
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$YjiNj2_URAcATeQAFni5wHqr3qk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$YjiNj2_URAcATeQAFni5wHqr3qk;-><init>(Ljava/util/HashSet;)V

    .line 61
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public canFolderShowIndicator()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mCanFolderShowIndicator:Z

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mIndicatorColor:I

    return v0
.end method

.method public abstract getNewInstalledShortcutInfos(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;
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
.end method

.method protected getShortcutInfosInFolders(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$D2eqh1hesVnXhR5fxk2vxJpOTTU;

    invoke-direct {v1, p2}, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$D2eqh1hesVnXhR5fxk2vxJpOTTU;-><init>(Ljava/util/HashSet;)V

    .line 57
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$c0e9BCgxy-wJ_yHyPiBvRugVUOE;

    invoke-direct {p2, v0}, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$c0e9BCgxy-wJ_yHyPiBvRugVUOE;-><init>(Ljava/util/HashSet;)V

    .line 58
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public abstract init(Z)V
.end method

.method public setCanFolderShowIndicator(Z)V
    .locals 3

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndicatorColor, canFolderShowIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    iput-boolean p1, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mCanFolderShowIndicator:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 3

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndicatorColor, indicatorColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    iput p1, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mIndicatorColor:I

    return-void
.end method

.method public abstract updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V
.end method
