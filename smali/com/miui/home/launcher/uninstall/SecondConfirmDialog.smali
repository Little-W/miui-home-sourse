.class public final Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;
.super Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;
.source "SecondConfirmDialog.kt"


# instance fields
.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
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

    const-string v0, "allShortcutInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 46
    iget-object p2, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->bindShortcut(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private final updateDialogView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mSecondShortcutInfos[mIndex - 1]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    iget v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mSecondShortcutInfos[mIndex]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->getMLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->bindShortcut(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onNegativeClick(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 31
    iget v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 32
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 33
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mCancelConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mAllShortcutInfos:Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mCancelConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    .line 41
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->updateDialogView(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPositiveClick(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V

    .line 12
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 14
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 18
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 19
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_3
    iget p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mIndex:I

    .line 24
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->updateDialogView(Ljava/util/List;)V

    :goto_0
    return-void
.end method
