.class public abstract Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "BaseUninstallDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseUninstallDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseUninstallDialog.kt\ncom/miui/home/launcher/uninstall/BaseUninstallDialog\n*L\n1#1,123:1\n*E\n"
.end annotation


# instance fields
.field protected mAllShortcutInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCancelConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCancelShortcutInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mPositiveConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSecondShortcutInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mUninstallShortcutInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/List;)V
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allShortcutInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110005

    .line 23
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getNegativeButton$p(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)Landroid/widget/Button;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPositiveButton$p(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)Landroid/widget/Button;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private final getNegativeButton()Landroid/widget/Button;
    .locals 2

    const/4 v0, -0x2

    .line 83
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "getButton(DialogInterface.BUTTON_NEGATIVE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getPositiveButton()Landroid/widget/Button;
    .locals 2

    const/4 v0, -0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "getButton(DialogInterface.BUTTON_POSITIVE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final init(Landroid/content/Context;Ljava/util/List;)V
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

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0100

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setView(Landroid/view/View;)V

    .line 48
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mAllShortcutInfos:Ljava/util/List;

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mAllShortcutInfos:Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 50
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V

    check-cast p1, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 63
    new-instance p1, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$2;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V

    check-cast p1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setNegativeButTitle()V

    return-void

    .line 46
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.miui.home.launcher.uninstall.UninstallDialogViewContainer"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getCancelShortcutInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getMLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method public final onMessageEvent(Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public abstract onNegativeClick(Lmiuix/appcompat/app/AlertDialog;)V
.end method

.method public abstract onPositiveClick(Lmiuix/appcompat/app/AlertDialog;)V
.end method

.method public final reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V
    .locals 5

    if-eqz p1, :cond_7

    .line 113
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 115
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 116
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    :goto_2
    if-nez v2, :cond_7

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    if-nez v3, :cond_7

    if-eqz p2, :cond_6

    const-string p2, "click_cancel_when_hide_or_uninstall_app"

    goto :goto_3

    :cond_6
    const-string p2, "click_ok_when_hide_or_uninstall_app"

    :goto_3
    const-string v2, "launcher"

    .line 117
    invoke-static {v0, p1, v1, p2, v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWhenHideOrUninstallApp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final setCancelConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setNegativeButTitle()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f1000a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setPositiveButTitle(I)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setPositiveConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    return-void
.end method
