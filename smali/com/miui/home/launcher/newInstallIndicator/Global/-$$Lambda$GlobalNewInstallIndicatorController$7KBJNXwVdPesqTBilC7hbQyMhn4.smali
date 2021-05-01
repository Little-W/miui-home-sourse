.class public final synthetic Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$7KBJNXwVdPesqTBilC7hbQyMhn4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;

.field private final synthetic f$1:Ljava/util/HashSet;

.field private final synthetic f$2:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$7KBJNXwVdPesqTBilC7hbQyMhn4;->f$0:Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;

    iput-object p2, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$7KBJNXwVdPesqTBilC7hbQyMhn4;->f$1:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$7KBJNXwVdPesqTBilC7hbQyMhn4;->f$2:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$7KBJNXwVdPesqTBilC7hbQyMhn4;->f$0:Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;

    iget-object v1, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$7KBJNXwVdPesqTBilC7hbQyMhn4;->f$1:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/home/launcher/newInstallIndicator/Global/-$$Lambda$GlobalNewInstallIndicatorController$7KBJNXwVdPesqTBilC7hbQyMhn4;->f$2:Ljava/util/HashSet;

    check-cast p1, Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;->lambda$updateNewInstalledShortcutInfosFromProvider$392(Lcom/miui/home/launcher/newInstallIndicator/Global/GlobalNewInstallIndicatorController;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/miui/home/launcher/newInstallIndicator/Global/RomPreinstallAppData;)V

    return-void
.end method
