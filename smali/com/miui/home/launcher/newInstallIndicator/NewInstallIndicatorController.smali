.class public abstract Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
.super Ljava/lang/Object;
.source "NewInstallIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$NewInstallIndicatorControllerInternal;,
        Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$_lancet;
    }
.end annotation


# instance fields
.field private mCanFolderShowIndicator:Z

.field private mIndicatorColor:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xca4b02

    .line 23
    iput v0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mIndicatorColor:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mCanFolderShowIndicator:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;
    .locals 1

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$NewInstallIndicatorControllerInternal;->access$000()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getShortcutInfosInFolders$0(Ljava/util/HashSet;Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 58
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

.method static synthetic lambda$getShortcutInfosInFolders$3(Ljava/util/HashSet;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$HHIk-4lmh0zuQdes6oq4KFT6Y2k;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$HHIk-4lmh0zuQdes6oq4KFT6Y2k;

    .line 61
    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$yGybd5SQzsT-ANiY6Nd965RHpJA;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$yGybd5SQzsT-ANiY6Nd965RHpJA;-><init>(Ljava/util/HashSet;)V

    .line 62
    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$null$1(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$null$2(Ljava/util/HashSet;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public canFolderShowIndicator()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mCanFolderShowIndicator:Z

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 38
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

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 57
    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$jkAQ4FpB_Fmmjf_QLdgdFNExWI0;

    invoke-direct {v1, p2}, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$jkAQ4FpB_Fmmjf_QLdgdFNExWI0;-><init>(Ljava/util/HashSet;)V

    .line 58
    invoke-interface {p1, v1}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$VRS9zCHzfQOEdFu653N7qkPOkkw;

    invoke-direct {p2, v0}, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$VRS9zCHzfQOEdFu653N7qkPOkkw;-><init>(Ljava/util/HashSet;)V

    .line 59
    invoke-interface {p1, p2}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-object v0
.end method

.method public abstract init(Z)V
.end method

.method public setCanFolderShowIndicator(Z)V
    .locals 3

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndicatorColor, canFolderShowIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-boolean p1, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mCanFolderShowIndicator:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 3

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndicatorColor, indicatorColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput p1, p0, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->mIndicatorColor:I

    return-void
.end method

.method public abstract updateRomPreintallAppsPositionInDB(Landroid/database/sqlite/SQLiteDatabase;)V
.end method
