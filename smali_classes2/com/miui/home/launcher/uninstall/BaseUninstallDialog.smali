.class public abstract Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;
.super Lmiui/home/lib/dialog/AlertDialog;
.source "BaseUninstallDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseUninstallDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseUninstallDialog.kt\ncom/miui/home/launcher/uninstall/BaseUninstallDialog\n*L\n1#1,152:1\n*E\n"
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

    .line 31
    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getNegativeButton$p(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)Landroid/widget/Button;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPositiveButton$p(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)Landroid/widget/Button;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private final getNegativeButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x2

    .line 104
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const-string v0, "getButton(DialogInterface.BUTTON_NEGATIVE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getPositiveButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const-string v0, "getButton(DialogInterface.BUTTON_POSITIVE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final init(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
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

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0171

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setView(Landroid/view/View;)V

    .line 56
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mAllShortcutInfos:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mAllShortcutInfos:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 58
    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    iget-object v4, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3, v4}, Lcom/miui/home/launcher/uninstall/UninstallController;->isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 71
    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$2;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    if-eqz v0, :cond_3

    const v1, 0x7f0a02bd

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    :cond_3
    if-eqz v1, :cond_6

    .line 78
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaomi.market"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-array v2, v2, [Landroid/view/View;

    .line 82
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    aput-object v3, v2, v0

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v2, v4, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0605b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-interface {v2, v4}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object v2

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v2, v3, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 83
    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$$inlined$apply$lambda$1;

    invoke-direct {v0, p2, v1, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$$inlined$apply$lambda$1;-><init>(Ljava/util/List;Landroid/widget/TextView;Landroid/content/Context;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    :goto_1
    const/16 p1, 0x8

    .line 79
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setNegativeButTitle()V

    return-void

    .line 54
    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.miui.home.launcher.uninstall.UninstallDialogViewContainer"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getCancelShortcutInfos()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected final getMLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public final onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "color_mode"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onMessageEvent(Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public abstract onNegativeClick(Lmiui/home/lib/dialog/AlertDialog;)V
.end method

.method public abstract onPositiveClick(Lmiui/home/lib/dialog/AlertDialog;)V
.end method

.method public final reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V
    .locals 4

    if-eqz p1, :cond_7

    .line 142
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 145
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    if-nez v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    if-nez v2, :cond_7

    if-eqz p2, :cond_6

    const-string p2, "click_cancel_when_hide_or_uninstall_app"

    goto :goto_3

    :cond_6
    const-string p2, "click_ok_when_hide_or_uninstall_app"

    :goto_3
    const-string v1, "launcher"

    .line 146
    invoke-static {p0, p1, v0, p2, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWhenHideOrUninstallApp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 115
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setNegativeButTitle()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f1100d5

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

    .line 93
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

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    return-void
.end method
