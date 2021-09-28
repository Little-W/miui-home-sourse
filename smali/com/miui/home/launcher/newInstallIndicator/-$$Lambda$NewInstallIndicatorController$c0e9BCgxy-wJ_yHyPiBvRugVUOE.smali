.class public final synthetic Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$c0e9BCgxy-wJ_yHyPiBvRugVUOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$c0e9BCgxy-wJ_yHyPiBvRugVUOE;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$c0e9BCgxy-wJ_yHyPiBvRugVUOE;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->lambda$getShortcutInfosInFolders$3(Ljava/util/HashSet;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method
