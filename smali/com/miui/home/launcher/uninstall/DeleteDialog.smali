.class public final Lcom/miui/home/launcher/uninstall/DeleteDialog;
.super Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;
.source "DeleteDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteDialog.kt\ncom/miui/home/launcher/uninstall/DeleteDialog\n*L\n1#1,46:1\n*E\n"
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

    const-string v0, "allShortcutInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mContext:Landroid/content/Context;

    .line 10
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->setIsContainUninstall(Z)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mAllShortcutInfos:Ljava/util/List;

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->bindShortcut(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private final getMultiplePositiveClick(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 40
    new-instance p1, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mAllShortcutInfos:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const v0, 0x7f100105

    .line 41
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setPositiveButTitle(I)V

    .line 42
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setNegativeButTitle()V

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->setPositiveConsumer(Ljava/util/function/Consumer;)V

    .line 44
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->show()V

    return-void
.end method

.method private final getSinglePositiveClick(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

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

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/uninstall/DeleteDialog;->reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onNegativeClick(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uninstall/DeleteDialog;->reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 26
    :cond_0
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onPositiveClick(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mAllShortcutInfos:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/DeleteDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 16
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/DeleteDialog;->getSinglePositiveClick(Lmiuix/appcompat/app/AlertDialog;)V

    goto :goto_1

    .line 18
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/DeleteDialog;->getMultiplePositiveClick(Lmiuix/appcompat/app/AlertDialog;)V

    :goto_1
    return-void
.end method
