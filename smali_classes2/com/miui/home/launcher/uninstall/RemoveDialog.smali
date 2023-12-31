.class public final Lcom/miui/home/launcher/uninstall/RemoveDialog;
.super Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;
.source "RemoveDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveDialog.kt\ncom/miui/home/launcher/uninstall/RemoveDialog\n*L\n1#1,47:1\n*E\n"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allShortcutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mContext:Landroid/content/Context;

    .line 11
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->setIsContainUninstall(Z)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mAllShortcutInfos:Ljava/util/List;

    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->bindShortcut(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private final getMultiplePositiveClick(Lmiui/home/lib/dialog/AlertDialog;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    .line 41
    new-instance p1, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mAllShortcutInfos:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const v0, 0x7f11013f

    .line 42
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setPositiveButTitle(I)V

    .line 43
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setNegativeButTitle()V

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    .line 45
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->show()V

    return-void
.end method

.method private final getSinglePositiveClick(Lmiui/home/lib/dialog/AlertDialog;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/RemoveDialog;->reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onNegativeClick(Lmiui/home/lib/dialog/AlertDialog;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uninstall/RemoveDialog;->reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 27
    :cond_0
    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    return-void
.end method

.method public onPositiveClick(Lmiui/home/lib/dialog/AlertDialog;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/RemoveDialog;->mAllShortcutInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/RemoveDialog;->getSinglePositiveClick(Lmiui/home/lib/dialog/AlertDialog;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/RemoveDialog;->getMultiplePositiveClick(Lmiui/home/lib/dialog/AlertDialog;)V

    :goto_0
    return-void
.end method
