.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;
.super Landroidx/preference/Preference;
.source "TaskStackViewLayoutStyleContainerPreference.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0174

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public initAnimView()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0806d5

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0806d3

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setImageResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    .line 87
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0806d4

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    const v1, 0x7f0806d2

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setImageResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {v1, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    .line 93
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;->setAspectRatio(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initCheckedBox()V
    .locals 2

    .line 67
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStyleContainerPreference$9XKrGhEjk-uY3dW6JMgeMPGB3Jg;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStyleContainerPreference$9XKrGhEjk-uY3dW6JMgeMPGB3Jg;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStyleContainerPreference$1xlDvIdDAPTElHcwSZSW4165vFk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStyleContainerPreference$1xlDvIdDAPTElHcwSZSW4165vFk;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$initCheckedBox$0$TaskStackViewLayoutStyleContainerPreference(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$initCheckedBox$1$TaskStackViewLayoutStyleContainerPreference(Ljava/lang/Boolean;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p0, :cond_1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 41
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    .line 42
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 43
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a03d0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 44
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a01a5

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 45
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a03cf

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 46
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a01a4

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalAnimView:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initCheckedBox()V

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initAnimView()V

    return-void
.end method

.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 1

    const p1, 0x7f0a01a5

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a03d0

    if-eq p2, p1, :cond_0

    .line 61
    sget-object p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged error, i="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
