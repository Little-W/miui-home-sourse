.class public final synthetic Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$ZD14eDDoCUd0WGexvKkdBI_8dck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$ZD14eDDoCUd0WGexvKkdBI_8dck;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$ZD14eDDoCUd0WGexvKkdBI_8dck;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->lambda$getShortcutInfosInFolders$388(Ljava/util/HashSet;Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    return p1
.end method
