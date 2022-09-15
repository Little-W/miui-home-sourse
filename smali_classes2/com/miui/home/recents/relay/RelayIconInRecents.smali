.class public Lcom/miui/home/recents/relay/RelayIconInRecents;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RelayIconInRecents.java"

# interfaces
.implements Lcom/xiaomi/mirror/synergy/RelayIconCallback;


# instance fields
.field private mCurrentRelayPackage:Ljava/lang/String;

.field private final mDefConfig:Lmiuix/animation/base/AnimConfig;

.field private final mIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

.field private mIsShowRelayIcon:Z

.field private mRelayAppInfo:Landroid/widget/TextView;

.field private mRelayDeviceInfo:Landroid/widget/TextView;

.field private mRelayIcon:Landroid/widget/ImageView;

.field mRelayIconAnimStateHide:Lmiuix/animation/controller/AnimState;

.field mRelayIconAnimStateShow:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    .line 51
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v0, "show"

    invoke-direct {p2, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconAnimStateShow:Lmiuix/animation/controller/AnimState;

    .line 52
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v0, "hide"

    invoke-direct {p2, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconAnimStateHide:Lmiuix/animation/controller/AnimState;

    .line 54
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v1, Lcom/miui/home/recents/relay/RelayIconInRecents$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/relay/RelayIconInRecents$1;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V

    aput-object v1, v0, p1

    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 64
    new-instance p1, Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-direct {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$registerRelayIconCallback$1(Lcom/miui/home/recents/relay/RelayIconInRecents;)V
    .locals 3

    :try_start_0
    const-string v0, "RelayIconInRecents"

    const-string v1, "registerRelayIconCallback: "

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->registerCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/RelayIconCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RelayIconInRecents"

    const-string v2, "registerRelayIconCallback: "

    .line 162
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setShowRelayIcon$0(Lcom/miui/home/recents/relay/RelayIconInRecents;Z)V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/16 v3, 0x10

    .line 92
    new-array v4, v2, [F

    const/high16 v5, 0x43960000    # 300.0f

    aput v5, v4, v1

    invoke-static {v3, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x2

    const/4 v4, 0x2

    .line 93
    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    .line 91
    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 94
    new-array v0, v2, [Landroid/view/View;

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconAnimStateShow:Lmiuix/animation/controller/AnimState;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIconAnimStateHide:Lmiuix/animation/controller/AnimState;

    :goto_1
    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object v3, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v3, v2, v1

    invoke-interface {v0, p1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data
.end method

.method public static synthetic lambda$unRegisterRelayIconCallback$2(Lcom/miui/home/recents/relay/RelayIconInRecents;)V
    .locals 2

    :try_start_0
    const-string v0, "RelayIconInRecents"

    const-string v1, "unRegisterRelayIconCallback: "

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->unRegisterCallback(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setShowRelayIcon(Z)V
    .locals 3

    const-string v0, "RelayIconInRecents"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowRelayIcon: show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setVisibility(I)V

    .line 90
    :cond_0
    new-instance v0, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$CKaxnZ6nBOIfzop7PVtmj6PHKZk;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$CKaxnZ6nBOIfzop7PVtmj6PHKZk;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isShowRelayIcon()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 137
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->registerRelayIconCallback()V

    .line 139
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDetachedFromWindow()V

    .line 148
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->unRegisterRelayIconCallback()V

    .line 150
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    const v0, 0x7f0a02a4

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02a2

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayAppInfo:Landroid/widget/TextView;

    const v0, 0x7f0a02a3

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayDeviceInfo:Landroid/widget/TextView;

    return-void
.end method

.method public onIconHide()V
    .locals 2

    const-string v0, "RelayIconInRecents"

    const-string v1, "onIconHide."

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    .line 109
    invoke-direct {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setShowRelayIcon(Z)V

    return-void
.end method

.method public onIconShow()V
    .locals 2

    const-string v0, "RelayIconInRecents"

    const-string v1, "onIconShow: "

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    return-void
.end method

.method public onIconUpdate(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "RelayIconInRecents"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIconUpdate-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-boolean v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayDeviceInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f1103e6

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayAppInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mRelayAppInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setShowRelayIcon(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->onIconHide()V

    :cond_0
    return-void
.end method

.method public performIconClick()Z
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->performIconClick(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerRelayIconCallback()V
    .locals 1

    .line 157
    new-instance v0, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$AyONbTbNGsTffzBxFLdxHdMElxc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$AyONbTbNGsTffzBxFLdxHdMElxc;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setupVisible()V
    .locals 1

    .line 187
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mIsShowRelayIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents;->mCurrentRelayPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setVisibility(I)V

    return-void
.end method

.method public unRegisterRelayIconCallback()V
    .locals 1

    .line 169
    new-instance v0, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$rezz_ilTDGBy4WqqGl8AhLrwYkE;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/relay/-$$Lambda$RelayIconInRecents$rezz_ilTDGBy4WqqGl8AhLrwYkE;-><init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
